.class public final Lcom/android/internal/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;,
        Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .locals 4

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v1, 0x2

    return v1

    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor<",
            "TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->size()I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-array v3, v1, [B

    new-array v4, v1, [Landroid/icu/util/ULocale;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v8

    if-nez v8, :cond_1

    nop

    move-object/from16 v12, p2

    goto :goto_3

    :cond_1
    const/4 v10, 0x1

    move v11, v10

    move v10, v6

    :goto_1
    if-ge v10, v1, :cond_5

    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    aput-byte v6, v3, v10

    goto :goto_2

    :cond_2
    aget-object v14, v4, v10

    if-nez v14, :cond_3

    nop

    invoke-static {v13}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v14

    invoke-static {v14}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v14

    aput-object v14, v4, v10

    :cond_3
    aget-object v14, v4, v10

    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v15

    invoke-static {v15}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v14

    aput-byte v14, v3, v10

    if-eqz v11, :cond_4

    aget-byte v14, v3, v10

    if-eqz v14, :cond_4

    const/4 v11, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v12, p2

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    if-nez v13, :cond_7

    new-instance v14, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-direct {v14, v3, v7}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    invoke-virtual {v2, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-virtual {v13, v3, v7}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    move-object/from16 v9, p1

    move-object/from16 v12, p2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v8, v7

    :goto_4
    if-ge v6, v8, :cond_9

    aget-object v10, v7, v6

    iget v11, v10, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v13, p3

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v13, p3

    return-void
.end method
