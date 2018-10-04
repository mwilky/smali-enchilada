.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final COMPATIBILITY_CHARACTERS:[[C

.field private static final DECIMAL:I = 0x2

.field private static final DEFAULT_DECIMAL_POINT_CHARS:Ljava/lang/String; = "."

.field private static final DEFAULT_SIGN_CHARS:Ljava/lang/String; = "-+"

.field private static final EN_DASH:C = '\u2013'

.field private static final HYPHEN_MINUS:C = '-'

.field private static final MINUS_SIGN:C = '\u2212'

.field private static final SIGN:I = 0x1

.field private static final sLocaleCacheLock:Ljava/lang/Object;

.field private static final sLocaleInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLocaleCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "[",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringCacheLock:Ljava/lang/Object;

.field private static final sStringInstanceCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStringCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccepted:[C

.field private final mDecimal:Z

.field private mDecimalPointChars:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private mNeedsAdvancedInput:Z

.field private final mSign:Z

.field private mSignChars:Ljava/lang/String;

.field private final mStringMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [[C

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xd

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;ZZ)V
    .locals 12

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_8

    :cond_2
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p2, :cond_6

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v4, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    const/16 v9, 0x2212

    if-eq v7, v9, :cond_4

    const/16 v9, 0x2013

    if-ne v7, v9, :cond_6

    :cond_4
    const/16 v9, 0x2d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_6
    :goto_1
    if-eqz p3, :cond_8

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_7

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    :cond_8
    invoke-static {v1}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->calculateNeedForAdvancedInput()V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method private calculateNeedForAdvancedInput()V
    .locals 3

    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 3

    sget-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/method/DigitsKeyListener;

    if-nez v1, :cond_0

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    sget-object v2, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    move-object v0, v1

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/DigitsKeyListener;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;
    .locals 2

    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p1, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    invoke-static {p0, v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 4

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/DigitsKeyListener;

    if-eqz v2, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    monitor-exit v1

    return-object v3

    :cond_1
    if-nez v2, :cond_2

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/text/method/DigitsKeyListener;

    move-object v2, v3

    sget-object v3, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v3, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v3, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    aput-object v3, v2, v0

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method private isDecimalPointChar(C)Z
    .locals 2

    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

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

.method private isSignChar(C)Z
    .locals 2

    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

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

.method private setToCompat()V
    .locals 3

    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void
.end method

.method private static stripBidiControls(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-boolean v4, v0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v4, :cond_0

    iget-boolean v4, v0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    if-eqz v3, :cond_1

    move-object v4, v3

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    :goto_0
    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_4

    invoke-interface {v1, v10}, Landroid/text/Spanned;->charAt(I)C

    move-result v11

    invoke-direct {v0, v11}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v12

    if-eqz v12, :cond_2

    move v7, v10

    goto :goto_2

    :cond_2
    invoke-direct {v0, v11}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v12

    if-eqz v12, :cond_3

    move v8, v10

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    move v10, v8

    move/from16 v8, p6

    :goto_3
    if-ge v8, v9, :cond_7

    invoke-interface {v1, v8}, Landroid/text/Spanned;->charAt(I)C

    move-result v11

    invoke-direct {v0, v11}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, ""

    return-object v12

    :cond_5
    invoke-direct {v0, v11}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v12

    if-eqz v12, :cond_6

    move v10, v8

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    add-int/lit8 v11, v6, -0x1

    :goto_4
    if-lt v11, v5, :cond_11

    invoke-interface {v4, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/4 v13, 0x0

    invoke-direct {v0, v12}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v14

    if-eqz v14, :cond_b

    if-ne v11, v5, :cond_a

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    if-ltz v7, :cond_9

    const/4 v13, 0x1

    goto :goto_6

    :cond_9
    move v7, v11

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    invoke-direct {v0, v12}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v14

    if-eqz v14, :cond_d

    if-ltz v10, :cond_c

    const/4 v13, 0x1

    goto :goto_6

    :cond_c
    move v10, v11

    :cond_d
    :goto_6
    if-eqz v13, :cond_10

    add-int/lit8 v14, v5, 0x1

    if-ne v6, v14, :cond_e

    const-string v14, ""

    return-object v14

    :cond_e
    if-nez v8, :cond_f

    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14, v4, v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object v8, v14

    :cond_f
    sub-int v14, v11, v5

    add-int/lit8 v15, v11, 0x1

    sub-int/2addr v15, v5

    invoke-virtual {v8, v14, v15}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_10
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_11
    if-eqz v8, :cond_12

    return-object v8

    :cond_12
    if-eqz v3, :cond_13

    return-object v3

    :cond_13
    const/4 v11, 0x0

    return-object v11
.end method

.method protected getAcceptedChars()[C
    .locals 1

    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :cond_1
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x2000

    :cond_2
    :goto_0
    return v0
.end method
