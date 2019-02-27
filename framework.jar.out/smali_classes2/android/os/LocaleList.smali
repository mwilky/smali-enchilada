.class public final Landroid/os/LocaleList;
.super Ljava/lang/Object;
.source "LocaleList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/LocaleList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final NUM_PSEUDO_LOCALES:I = 0x2

.field private static final STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static sDefaultAdjustedLocaleList:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sDefaultLocaleList:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sEmptyList:[Ljava/util/Locale;

.field private static final sEmptyLocaleList:Landroid/os/LocaleList;

.field private static sLastDefaultLocale:Ljava/util/Locale;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastExplicitlySetLocaleList:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    sput-object v1, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    new-instance v1, Landroid/os/LocaleList;

    new-array v0, v0, [Ljava/util/Locale;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    sput-object v1, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    new-instance v0, Landroid/os/LocaleList$1;

    invoke-direct {v0}, Landroid/os/LocaleList$1;-><init>()V

    sput-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    const-string v0, "en-Latn"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    sput-object v0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    sput-object v0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Landroid/os/LocaleList;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    :goto_0
    const/4 v2, -0x1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    add-int/2addr v4, v1

    new-array v5, v4, [Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v0

    if-ne v2, v3, :cond_4

    move v3, v0

    :goto_4
    if-ge v3, v1, :cond_6

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    aput-object v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_5
    if-ge v3, v2, :cond_5

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    aput-object v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v2, 0x1

    :goto_6
    if-ge v3, v1, :cond_6

    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_7
    if-ge v0, v4, :cond_8

    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, -0x1

    if-ge v0, v6, :cond_7

    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    iput-object v5, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    return-void

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "topLocale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>([Ljava/util/Locale;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    iput-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    const-string v0, ""

    iput-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Locale;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    aget-object v4, p1, v3

    if-eqz v4, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    aput-object v5, v0, v3

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "list["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] is a repetition"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "list["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    iput-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    :goto_0
    return-object v1
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const v0, 0x7fffffff

    if-eqz p2, :cond_3

    sget-object v2, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, v2}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    if-ge v2, v0, :cond_3

    move v0, v2

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v5

    if-nez v5, :cond_4

    return v1

    :cond_4
    if-ge v5, v0, :cond_5

    move v0, v5

    :cond_5
    goto :goto_0

    :cond_6
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/os/LocaleList;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method public static forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 4

    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/os/LocaleList;

    invoke-direct {v2, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v2

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public static getAdjustedDefault()Landroid/os/LocaleList;
    .locals 2

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefault()Landroid/os/LocaleList;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    monitor-exit v1

    return-object v2

    :cond_0
    new-instance v2, Landroid/os/LocaleList;

    sget-object v3, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    invoke-direct {v2, v0, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    sput-object v2, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    :cond_1
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getEmptyLocaleList()Landroid/os/LocaleList;
    .locals 1

    sget-object v0, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isPseudoLocale(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPseudoLocale(Ljava/util/Locale;)Z
    .locals 1

    sget-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPseudoLocalesOnly([Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    return v3

    :cond_1
    array-length v1, p0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 5

    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    nop

    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    return v1

    :cond_5
    invoke-static {p1}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_6
    :goto_2
    return v2
.end method

.method public static setDefault(Landroid/os/LocaleList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    return-void
.end method

.method public static setDefault(Landroid/os/LocaleList;I)V
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    sput-object p0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    sput-object p0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    if-nez p1, :cond_0

    sget-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    sput-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/LocaleList;

    sget-object v2, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v3, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    invoke-direct {v1, v2, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locales is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locales is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/LocaleList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/LocaleList;

    iget-object v1, v1, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    iget-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v3, v3

    array-length v4, v1

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getFirstMatchIndex([Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method public getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method public getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x1f

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/Locale;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000001L

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000002L

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000003L

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
