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

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 71
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 86
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

    .line 94
    const-string v0, "com.google.android.inputmethod.pinyin"

    const-string v1, "com.google.android.inputmethod.japanese"

    const-string v2, "com.google.android.inputmethod.korean"

    const-string v3, "com.google.android.apps.inputmethod.hindi"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->OP_SYSTEM_IME:[Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    .line 486
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    .line 1421
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    .line 1422
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "GB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .line 63
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 63
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

    .line 844
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 845
    .local v0, "imeMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
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

    .line 846
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 847
    .local v3, "imeName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 848
    .local v4, "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 849
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 850
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 852
    :cond_0
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "imeName":Ljava/lang/String;
    .end local v4    # "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 854
    :cond_1
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 681
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 682
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 2
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 798
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    const/4 v0, 0x1

    return v0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 368
    return-object v1

    .line 371
    :cond_0
    const-string v0, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "localeParams":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    const-string/jumbo v3, "tl"

    aget-object v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    const-string v3, "fil"

    aput-object v3, v0, v5

    .line 382
    :cond_1
    array-length v3, v0

    if-ne v3, v4, :cond_2

    .line 383
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 384
    :cond_2
    array-length v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 385
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 386
    :cond_3
    array-length v3, v0

    if-ne v3, v2, :cond_4

    .line 387
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    aget-object v3, v0, v4

    aget-object v4, v0, v6

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 389
    :cond_4
    return-object v1
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 7
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "checkCountry"    # Z
    .param p3, "mode"    # Ljava/lang/String;

    .line 394
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 395
    return v0

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 398
    .local v1, "N":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 399
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 400
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz p2, :cond_2

    .line 401
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v4

    .line 402
    .local v4, "subtypeLocale":Ljava/util/Locale;
    if-eqz v4, :cond_4

    .line 403
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 404
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 405
    goto :goto_2

    .line 407
    .end local v4    # "subtypeLocale":Ljava/util/Locale;
    :cond_1
    goto :goto_1

    .line 408
    :cond_2
    new-instance v4, Ljava/util/Locale;

    .line 409
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 408
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 410
    .restart local v4    # "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 411
    goto :goto_2

    .line 414
    .end local v4    # "subtypeLocale":Ljava/util/Locale;
    :cond_3
    :goto_1
    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 415
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 398
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .restart local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 419
    .end local v2    # "i":I
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    return v0
.end method

.method public static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "canIgnoreLocaleAsLastResort"    # Z
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

    .line 632
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 635
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 638
    :cond_1
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "language":Ljava/lang/String;
    const/4 v1, 0x0

    .line 640
    .local v1, "partialMatchFound":Z
    const/4 v2, 0x0

    .line 641
    .local v2, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .line 642
    .local v3, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 643
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 644
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 645
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 646
    .local v7, "subtypeLocale":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 649
    .local v8, "subtypeLanguage":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 650
    :cond_2
    if-nez v3, :cond_3

    .line 651
    move-object v3, v6

    .line 653
    :cond_3
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 655
    move-object v2, v6

    .line 656
    goto :goto_1

    .line 657
    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 659
    move-object v2, v6

    .line 660
    const/4 v1, 0x1

    .line 643
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLocale":Ljava/lang/String;
    .end local v8    # "subtypeLanguage":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 665
    .end local v5    # "i":I
    :cond_6
    :goto_1
    if-nez v2, :cond_7

    if-eqz p4, :cond_7

    .line 666
    return-object v3

    .line 677
    :cond_7
    return-object v2

    .line 633
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "partialMatchFound":Z
    .end local v2    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "N":I
    :cond_8
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApiCallStack()Ljava/lang/String;
    .locals 6

    .line 120
    const-string v0, ""

    .line 122
    .local v0, "apiCallStack":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 125
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 126
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    move-object v0, v4

    goto :goto_1

    .line 130
    :cond_0
    const-string v5, "Transact("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 132
    move-object v0, v4

    .line 125
    .end local v4    # "tempCallStack":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "frames":[Ljava/lang/StackTraceElement;
    .end local v3    # "j":I
    :cond_1
    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
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

    .line 363
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "onlyMinimum"    # Z
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

    .line 344
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {p1, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 350
    .local v0, "fallbackLocale":Ljava/util/Locale;
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    .line 351
    .local v8, "systemLocale":Ljava/util/Locale;
    nop

    .line 352
    invoke-static {p1, p0, v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v9

    .line 353
    .local v9, "builder":Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    if-nez p2, :cond_0

    .line 354
    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v7, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p0

    move-object v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v1

    .line 356
    invoke-virtual {v1, p1, p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 358
    :cond_0
    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
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

    .line 178
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v10, v0, v3

    .line 179
    .local v10, "fallbackLocale":Ljava/util/Locale;
    move v4, v2

    .local v4, "i":I
    :goto_1
    move v11, v4

    .end local v4    # "i":I
    .local v11, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_1

    .line 180
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

    .line 183
    return-object v10

    .line 179
    :cond_0
    add-int/lit8 v4, v11, 0x1

    .end local v11    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 178
    .end local v4    # "i":I
    .end local v10    # "fallbackLocale":Ljava/util/Locale;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_2
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v10, v0, v3

    .line 190
    .restart local v10    # "fallbackLocale":Ljava/util/Locale;
    move v4, v2

    .restart local v4    # "i":I
    :goto_3
    move v11, v4

    .end local v4    # "i":I
    .restart local v11    # "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_4

    .line 191
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

    .line 194
    return-object v10

    .line 190
    :cond_3
    add-int/lit8 v4, v11, 0x1

    .end local v11    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 189
    .end local v4    # "i":I
    .end local v10    # "fallbackLocale":Ljava/util/Locale;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 198
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

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 778
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    if-eqz p2, :cond_1

    .line 779
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 780
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 779
    invoke-virtual {p2, p0, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 781
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 782
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

    .line 779
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 783
    :cond_1
    nop

    .line 778
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
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

    .line 497
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 499
    .local v0, "systemLocales":Landroid/os/LocaleList;
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-ne v2, p1, :cond_0

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 505
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 510
    nop

    .line 511
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 512
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 514
    :try_start_1
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 515
    sput-object p1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    .line 517
    monitor-exit v3

    .line 518
    return-object v2

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 505
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
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
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
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

    .line 523
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 524
    .local v0, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 525
    .local v1, "systemLocales":Landroid/os/LocaleList;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, "systemLocale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 527
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 530
    .local v4, "numSubtypes":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 531
    .local v5, "applicableModeAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    move v6, v2

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 533
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 534
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 535
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "mode":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 537
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "mode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 541
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 542
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 545
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 547
    .local v6, "nonKeyboardSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v7, "keyboardSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move v8, v2

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_6

    .line 550
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 551
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    .line 552
    .local v10, "mode":Ljava/lang/String;
    const-string v11, "keyboard"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 553
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 555
    :cond_4
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 556
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_5
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "mode":Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 562
    .end local v8    # "i":I
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v8, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v9, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v7, v9, v1, v8}, Lcom/android/internal/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 566
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 567
    const/4 v9, 0x0

    .line 568
    .local v9, "hasAsciiCapableKeyboard":Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 569
    .local v10, "numApplicationSubtypes":I
    move v11, v2

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_8

    .line 570
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    .line 571
    .local v12, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string v13, "AsciiCapable"

    invoke-virtual {v12, v13}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 572
    const/4 v9, 0x1

    .line 573
    goto :goto_4

    .line 569
    .end local v12    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 576
    .end local v11    # "i":I
    :cond_8
    :goto_4
    if-nez v9, :cond_a

    .line 577
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 578
    .local v11, "numKeyboardSubtypes":I
    nop

    .local v2, "i":I
    :goto_5
    if-ge v2, v11, :cond_a

    .line 579
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    .line 580
    .restart local v12    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    .line 581
    .local v13, "mode":Ljava/lang/String;
    const-string v14, "keyboard"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v12, v14}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 583
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v12    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v13    # "mode":Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 589
    .end local v2    # "i":I
    .end local v9    # "hasAsciiCapableKeyboard":Z
    .end local v10    # "numApplicationSubtypes":I
    .end local v11    # "numKeyboardSubtypes":I
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 590
    const-string v2, "keyboard"

    const/4 v9, 0x1

    move-object v10, p0

    invoke-static {v10, v0, v2, v3, v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 592
    .local v2, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_c

    .line 593
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_6

    .line 598
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

    .line 599
    .local v9, "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v11, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v9, v11, v1, v8}, Lcom/android/internal/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 601
    .end local v9    # "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    goto :goto_7

    .line 603
    :cond_d
    return-object v8
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;

    .line 611
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 612
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 613
    return-object p0

    .line 615
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemLocale"    # Ljava/util/Locale;
    .param p3, "fallbackLocale"    # Ljava/util/Locale;
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

    .line 306
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$1;)V

    .line 307
    .local v0, "builder":Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const-string v8, "keyboard"

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 309
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    return-object v0

    .line 312
    :cond_0
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 314
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    return-object v0

    .line 317
    :cond_1
    const/4 v5, 0x1

    const/4 v7, 0x1

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    return-object v0

    .line 322
    :cond_2
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 324
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    return-object v0

    .line 327
    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 329
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 330
    return-object v0

    .line 332
    :cond_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 334
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 335
    return-object v0

    .line 337
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

    .line 339
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

    .line 445
    .local p0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 450
    .local v0, "i":I
    const/4 v1, -0x1

    .line 451
    .local v1, "firstFoundSystemIme":I
    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 452
    add-int/lit8 v0, v0, -0x1

    .line 453
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 454
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    goto :goto_0

    .line 457
    :cond_1
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string v5, "keyboard"

    .line 458
    invoke-static {v3, v4, v2, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    return-object v3

    .line 462
    :cond_2
    if-gez v1, :cond_3

    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    move v1, v0

    .line 465
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    goto :goto_0

    .line 466
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    return-object v2

    .line 446
    .end local v0    # "i":I
    .end local v1    # "firstFoundSystemIme":I
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "mode"    # Ljava/lang/String;
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

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 435
    .local v1, "subtypeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 436
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 437
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .line 474
    if-eqz p0, :cond_1

    .line 475
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 476
    .local v0, "subtypeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 477
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 478
    .local v2, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 479
    return v1

    .line 476
    .end local v2    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "subtypeCount":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
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

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 425
    .local v1, "subtypeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 426
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "systemLocale"    # Ljava/util/Locale;
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

    .line 1465
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1466
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, "language":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1468
    .local v2, "hasLanguage":Z
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1469
    .local v3, "country":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1470
    .local v4, "hasCountry":Z
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 1471
    .local v5, "variant":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 1472
    .local v6, "hasVariant":Z
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    .line 1473
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v1, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v7, "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    goto :goto_0

    .line 1475
    .end local v7    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :cond_0
    move-object v7, v0

    .line 1477
    .restart local v7    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 1478
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v8, "systemLocaleLanguageCountry":Ljava/util/Locale;
    goto :goto_1

    .line 1480
    .end local v8    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :cond_1
    move-object v8, v0

    .line 1482
    .restart local v8    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :goto_1
    if-eqz v2, :cond_2

    .line 1483
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .local v0, "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_2

    .line 1485
    .end local v0    # "systemLocaleLanguage":Ljava/util/Locale;
    :cond_2
    nop

    .line 1487
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "hasLanguage":Z
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "hasCountry":Z
    .end local v5    # "variant":Ljava/lang/String;
    .end local v6    # "hasVariant":Z
    .restart local v0    # "systemLocaleLanguage":Ljava/util/Locale;
    :goto_2
    goto :goto_3

    .line 1488
    .end local v0    # "systemLocaleLanguage":Ljava/util/Locale;
    .end local v7    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    .end local v8    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :cond_3
    const/4 v7, 0x0

    .line 1489
    .restart local v7    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    const/4 v8, 0x0

    .line 1490
    .restart local v8    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    nop

    .line 1493
    .restart local v0    # "systemLocaleLanguage":Ljava/util/Locale;
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1494
    .local v1, "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    if-eqz v7, :cond_4

    .line 1495
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    :cond_4
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1499
    if-eqz v8, :cond_8

    .line 1506
    if-eqz v8, :cond_5

    .line 1507
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    :cond_5
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1510
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    :cond_6
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1513
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    :cond_7
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1522
    :cond_8
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1533
    :cond_9
    if-eqz v8, :cond_a

    .line 1534
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    :cond_a
    if-eqz v0, :cond_b

    .line 1537
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    :cond_b
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    :goto_4
    return-object v1
.end method

.method public static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isSoftInputModeStateVisibleAllowed(II)Z
    .locals 3
    .param p0, "targetSdkVersion"    # I
    .param p1, "controlFlags"    # I

    .line 1548
    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-ge p0, v1, :cond_0

    .line 1550
    return v0

    .line 1552
    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1553
    return v2

    .line 1555
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    .line 1556
    return v2

    .line 1558
    :cond_2
    return v0
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z

    .line 204
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 205
    return v1

    .line 207
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    return v1

    .line 210
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    return v1

    .line 213
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 214
    .local v0, "subtypeCount":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 215
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 216
    .local v3, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    const/4 v1, 0x1

    return v1

    .line 214
    .end local v3    # "s":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_4
    return v1
.end method

.method public static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 5
    .param p0, "inputMethod"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 145
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->OP_SYSTEM_IME:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 146
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->OP_SYSTEM_IME:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    return v3

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
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
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z
    .param p3, "requiredLocale"    # Ljava/util/Locale;
    .param p4, "checkCountry"    # Z
    .param p5, "requiredSubtypeMode"    # Ljava/lang/String;

    .line 160
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 161
    return v1

    .line 163
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    return v1

    .line 166
    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    return v1

    .line 169
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .line 470
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
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
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

    .line 815
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 816
    .local v0, "imeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    return-object v0

    .line 820
    :cond_0
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 822
    .local v1, "typeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 825
    .local v2, "subtypeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    nop

    .line 826
    invoke-static {p0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v3

    .line 829
    .local v3, "allImeSettings":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 830
    .local v5, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 831
    .local v6, "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 832
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 834
    :cond_1
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .end local v5    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 836
    :cond_2
    return-object v0
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 748
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 753
    .local v0, "state":I
    nop

    .line 752
    nop

    .line 754
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 760
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

    .line 767
    nop

    .line 773
    :cond_1
    return-void

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Landroid/os/RemoteException;
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

    .line 766
    return-void

    .line 749
    .end local v0    # "state":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 752
    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    .locals 12
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
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

    .line 691
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 698
    :cond_0
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 699
    .local v1, "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v0, v4

    .line 703
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 704
    .local v6, "enabledIme":Z
    move v7, v3

    .local v7, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 705
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 706
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 707
    const/4 v6, 0x1

    .line 708
    goto :goto_2

    .line 704
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 711
    .end local v7    # "j":I
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 713
    goto :goto_4

    .line 715
    :cond_3
    if-eqz v1, :cond_4

    .line 716
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 721
    goto :goto_4

    .line 723
    :cond_4
    const/4 v7, 0x0

    .line 725
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    const v8, 0x8000

    :try_start_0
    invoke-interface {p0, v5, v8, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 731
    nop

    .line 732
    if-nez v7, :cond_5

    .line 734
    goto :goto_4

    .line 736
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

    .line 737
    .local v8, "isSystemPackage":Z
    if-nez v8, :cond_7

    .line 738
    goto :goto_4

    .line 740
    :cond_7
    invoke-static {p0, v5, p2, p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "enabledIme":Z
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "isSystemPackage":Z
    goto :goto_4

    .line 727
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "enabledIme":Z
    .restart local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    .line 728
    .local v8, "e":Landroid/os/RemoteException;
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

    .line 730
    nop

    .line 699
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "enabledIme":Z
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 742
    :cond_8
    return-void

    .line 694
    .end local v1    # "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    :cond_9
    :goto_5
    return-void
.end method
