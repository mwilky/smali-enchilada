.class public final Landroid/view/inputmethod/InputMethodSubtype;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME:Ljava/lang/String; = "UntranslatableReplacementStringInSubtypeName"

.field private static final EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field private static final LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field private static final SUBTYPE_ID_NONE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mCachedLocaleObj:Ljava/util/Locale;

.field private volatile mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsAsciiCapable:Z

.field private final mIsAuxiliary:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOverridesImplicitlyEnabledSubtype:Z

.field private final mSubtypeExtraValue:Ljava/lang/String;

.field private final mSubtypeHashCode:I

.field private final mSubtypeIconResId:I

.field private final mSubtypeId:I

.field private final mSubtypeLanguageTag:Ljava/lang/String;

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeMode:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;->getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    move-object v1, p0

    invoke-direct {v1, v0}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_6

    move v2, v3

    nop

    :cond_6
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$100(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$200(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$300(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$1000(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$400(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$500(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$600(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$700(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$800(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$900(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    iget-boolean v6, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    return-void
.end method

.method private static getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 1

    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$102(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$202(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    invoke-static {v0, p2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$302(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$402(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$502(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$602(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    invoke-static {v0, p6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$702(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    invoke-static {v0, p7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$802(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    invoke-static {v0, p8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$902(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    return-object v0
.end method

.method private getExtraValueHashMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    aget-object v4, v1, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    aget-object v5, v4, v2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    array-length v5, v4

    if-le v5, v6, :cond_3

    array-length v5, v4

    const/4 v7, 0x2

    if-le v5, v7, :cond_2

    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    const-string v7, "ExtraValue has two or more \'=\'s"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aget-object v5, v4, v2

    aget-object v6, v4, v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I
    .locals 8

    xor-int/lit8 v0, p5, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v6

    aput-object p2, v5, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_0
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v4

    aput-object p1, v7, v6

    aput-object p2, v7, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public static sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iget v2, v0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 7

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    invoke-static {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "%s"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    :goto_0
    goto :goto_1

    :cond_3
    const-string v2, "%s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    goto :goto_0

    :cond_4
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    :goto_1
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found illegal format in subtype name("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    return-object v4
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    return v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    monitor-exit v0

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public final getSubtypeId()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    return v0
.end method

.method public final hasSubtypeId()Z
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public isAsciiCapable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    return v0
.end method

.method public isAuxiliary()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    return v0
.end method

.method public overridesImplicitlyEnabledSubtype()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
