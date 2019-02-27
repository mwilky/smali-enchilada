.class public Landroid/content/res/ResourcesImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesImpl$LookupStack;,
        Landroid/content/res/ResourcesImpl$ThemeImpl;
    }
.end annotation


# static fields
.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field static final TAG:Ljava/lang/String; = "Resources"

.field static final TAG_PRELOAD:Ljava/lang/String; = "Resources.preload"

.field public static final TRACE_FOR_DETAILED_PRELOAD:Z

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final XML_BLOCK_CACHE_SIZE:I = 0x4

.field private static sPreloadTracingNumLoadedDrawables:I

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedComplexColors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mAccessLock:Ljava/lang/Object;

.field private final mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mAssets:Landroid/content/res/AssetManager;

.field private final mCachedXmlBlockCookies:[I

.field private final mCachedXmlBlockFiles:[Ljava/lang/String;

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field private final mLookupStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/res/ResourcesImpl$LookupStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Landroid/icu/text/PluralRules;

.field private mPreloadTracingPreloadStartTime:J

.field private mPreloadTracingStartBitmapCount:J

.field private mPreloadTracingStartBitmapSize:J

.field private mPreloading:Z

.field private final mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "debug.trace_resource_preload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/LongSparseArray;

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v2, v0, v1

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    sget-object v0, Landroid/content/res/-$$Lambda$ResourcesImpl$h3PTRX185BeQl8SVC2_w9arp5Og;->INSTANCE:Landroid/content/res/-$$Lambda$ResourcesImpl$h3PTRX185BeQl8SVC2_w9arp5Og;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    new-array v0, v0, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    iput-object p4, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {p4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    return-void
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, p0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static attrForQuantityCode(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "zero"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "many"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "two"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "one"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "few"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const v0, 0x1000004

    return v0

    :pswitch_0
    const v0, 0x1000009

    return v0

    :pswitch_1
    const v0, 0x1000008

    return v0

    :pswitch_2
    const v0, 0x1000007

    return v0

    :pswitch_3
    const v0, 0x1000006

    return v0

    :pswitch_4
    const v0, 0x1000005

    return v0

    :sswitch_data_0
    .sparse-switch
        0x18b98 -> :sswitch_4
        0x1ae66 -> :sswitch_3
        0x1c24c -> :sswitch_2
        0x33065f -> :sswitch_1
        0x38fea8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 13

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v9, p6

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v1, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "drawable"

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "drawable"

    const/16 v6, 0x2000

    invoke-direct {v1, v0, v6, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    and-int/lit16 v4, v0, 0x2000

    if-nez v4, :cond_2

    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    aget-object v3, v4, v3

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    :goto_0
    goto :goto_1

    :cond_4
    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v12

    move-object/from16 v3, p3

    move-wide v4, v9

    move-object/from16 v6, p4

    move-object v7, v11

    move/from16 v8, p5

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    monitor-exit v12

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/ImageDecoder$AssetInputStreamSource;-><init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    :try_start_0
    sget-object v1, Landroid/content/res/-$$Lambda$ResourcesImpl$99dm2ENnzo9b0SIUjUj2Kl3pi90;->INSTANCE:Landroid/content/res/-$$Lambda$ResourcesImpl$99dm2ENnzo9b0SIUjUj2Kl3pi90;

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return-object v2
.end method

.method private getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;
    .locals 6

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    return-object v1

    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const/4 v3, 0x0

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v5, "color"

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private getPluralRule()Landroid/icu/text/PluralRules;
    .locals 3

    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$decodeImageDrawable$1(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    return-void
.end method

.method static synthetic lambda$new$0()Landroid/content/res/ResourcesImpl$LookupStack;
    .locals 2

    new-instance v0, Landroid/content/res/ResourcesImpl$LookupStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>(Landroid/content/res/ResourcesImpl$1;)V

    return-object v0
.end method

.method private loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 9

    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v4, ".xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v5, "ComplexColor"

    invoke-virtual {p0, v0, p3, v4, v5}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v6, 0x1

    if-eq v7, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v7, v8, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "gradient"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p1, v4, v5, p4}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v8

    move-object v1, v8

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "selector"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1, v4, v5, p4}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v8

    move-object v1, v8

    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_3
    :try_start_1
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "No start tag found"

    invoke-direct {v6, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from ComplexColor resource ID #0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": .xml extension required"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert to ComplexColor: type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/util/TypedValue;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    .locals 9

    iget v0, p3, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p3, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ComplexColor;

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ConstantState;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1, p2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/content/res/ComplexColor;

    :cond_1
    if-nez v3, :cond_2

    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ResourcesImpl;->loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_4

    iget v5, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v5}, Landroid/content/res/ComplexColor;->setBaseChangingConfigurations(I)V

    iget-boolean v5, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v5

    const/4 v6, 0x0

    iget v7, p3, Landroid/util/TypedValue;->resourceId:I

    const-string v8, "color"

    invoke-direct {p0, v5, v6, v7, v8}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v5, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v5

    invoke-virtual {v2, v0, v1, p2, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-object v3
.end method

.method private loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    sget-boolean v11, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v11, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sget v0, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    sget-wide v8, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    sget v10, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    :cond_0
    move v11, v0

    const-wide/16 v12, 0x2000

    invoke-static {v12, v13, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl$LookupStack;

    move-object v14, v0

    :try_start_0
    invoke-virtual {v14, v4}, Landroid/content/res/ResourcesImpl$LookupStack;->contains(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v14, v4}, Landroid/content/res/ResourcesImpl$LookupStack;->push(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, ".xml"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    :try_start_2
    iget v0, v3, Landroid/util/TypedValue;->assetCookie:I

    const-string v15, "drawable"

    invoke-virtual {v1, v5, v4, v0, v15}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const/4 v15, 0x0

    move/from16 v12, p4

    invoke-static {v2, v0, v12, v15}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move/from16 v25, v10

    goto/16 :goto_5

    :cond_1
    move/from16 v12, p4

    :try_start_3
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v13, v3, Landroid/util/TypedValue;->assetCookie:I

    const/4 v15, 0x2

    invoke-virtual {v0, v13, v5, v15}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-direct {v1, v13, v2, v3}, Landroid/content/res/ResourcesImpl;->decodeImageDrawable(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v15

    :goto_0
    move-object v0, v13

    :try_start_4
    invoke-virtual {v14}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_1

    nop

    nop

    nop

    nop

    const-wide/16 v12, 0x2000

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    sget-boolean v12, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v12, :cond_4

    ushr-int/lit8 v12, v4, 0x18

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    invoke-virtual {v1, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v6

    sget v17, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    sub-int v13, v17, v11

    sget-wide v19, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    move-wide/from16 v21, v6

    sub-long v6, v19, v8

    sget v17, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    sub-int v2, v17, v10

    sget v17, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    sput v17, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    if-nez v17, :cond_2

    move/from16 v17, v18

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    :goto_1
    move-wide/from16 v23, v8

    const-string v8, "Resources.preload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v17, :cond_3

    const-string v18, "Preloaded FW drawable #"

    :goto_2
    move/from16 v25, v10

    move-object/from16 v10, v18

    goto :goto_3

    :cond_3
    const-string v18, "Loaded non-preloaded FW drawable #"

    goto :goto_2

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " #nested_drawables= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " #bitmaps= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " total_bitmap_size= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " in[us] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v18, 0x3e8

    move-wide/from16 v26, v6

    div-long v6, v15, v18

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move/from16 v25, v10

    :goto_4
    return-object v0

    :catchall_1
    move-exception v0

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move/from16 v25, v10

    :goto_5
    :try_start_5
    invoke-virtual {v14}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V

    throw v0

    :cond_5
    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move/from16 v25, v10

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Recursive reference in drawable"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move/from16 v25, v10

    :goto_6
    const-wide/16 v6, 0x2000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from drawable resource ID #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_6
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") is not a Drawable (color or path): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .locals 4

    const v0, -0x40001001    # -1.9995116f

    and-int/2addr v0, p1

    not-int v1, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "?"

    :goto_0
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resource #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") that varies with configuration!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    return v1
.end method

.method finishPreloading()V
    .locals 9

    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingPreloadStartTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    iget-wide v4, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapSize:J

    sub-long/2addr v2, v4

    sget v4, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    int-to-long v4, v4

    iget-wide v6, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapCount:J

    sub-long/2addr v4, v6

    const-string v6, "Resources.preload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preload finished, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bitmaps of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    :cond_1
    return-void
.end method

.method public flushLayoutCache()V
    .locals 5

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    nop

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/res/ResourcesImpl;->getPluralRule()Landroid/icu/text/PluralRules;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/ResourcesImpl;->attrForQuantityCode(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const v3, 0x1000004

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plural resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " quantity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourceName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "string"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/content/res/ThemeController;->isOneplusApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oneplus_accent_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ThemeController;->getOneplusAccentColor(I)I

    move-result v0

    iput v0, p2, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Resources"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_0
    :goto_0
    nop

    :goto_1
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/content/res/ColorStateList;

    return-object v3

    :cond_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find ColorStateList from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 7

    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p2, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    :try_start_0
    invoke-static {}, Landroid/content/res/ThemeController;->isOneplusApplication()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oneplus_accent_color"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/content/res/ThemeController;->getOneplusAccentColor(I)I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Resources"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    :cond_0
    :goto_0
    nop

    :goto_1
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    invoke-direct {p0, p2, v0, v1}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    nop

    nop

    return-object v3

    :catch_2
    move-exception v3

    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from complex color resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4

    :cond_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": .xml extension required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eqz v14, :cond_1

    iget v0, v12, Landroid/util/TypedValue;->density:I

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    move/from16 v16, v0

    if-lez v14, :cond_3

    iget v0, v12, Landroid/util/TypedValue;->density:I

    if-lez v0, :cond_3

    iget v0, v12, Landroid/util/TypedValue;->density:I

    const v2, 0xffff

    if-eq v0, v2, :cond_3

    iget v0, v12, Landroid/util/TypedValue;->density:I

    if-ne v0, v14, :cond_2

    iget-object v0, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v12, Landroid/util/TypedValue;->density:I

    goto :goto_2

    :cond_2
    iget v0, v12, Landroid/util/TypedValue;->density:I

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v2

    div-int/2addr v0, v14

    iput v0, v12, Landroid/util/TypedValue;->density:I

    :cond_3
    :goto_2
    :try_start_0
    iget v0, v12, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_4

    iget v0, v12, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_4

    const/4 v0, 0x1

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    iget v3, v12, Landroid/util/TypedValue;->data:I

    int-to-long v3, v3

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    iget v3, v12, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, v12, Landroid/util/TypedValue;->data:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    :goto_3
    move/from16 v17, v0

    move-object v7, v2

    move-wide v5, v3

    iget-boolean v0, v10, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-nez v0, :cond_5

    if-eqz v16, :cond_5

    invoke-virtual {v7, v5, v6, v11, v15}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v1, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-object v0

    :cond_5
    if-eqz v17, :cond_6

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    goto :goto_4

    :cond_6
    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v2, v10, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    :goto_4
    move-object v8, v0

    const/4 v2, 0x0

    if-eqz v8, :cond_8

    sget-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v0, :cond_7

    ushr-int/lit8 v0, v13, 0x18

    if-ne v0, v1, :cond_7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v10, v13}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "Resources.preload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hit preloaded FW drawable #"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_5
    goto :goto_8

    :cond_8
    if-eqz v17, :cond_a

    :try_start_1
    invoke-static {}, Landroid/content/res/ThemeController;->isOneplusApplication()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v10, v13}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oneplus_accent_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v12, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ThemeController;->getOneplusAccentColor(I)I

    move-result v0

    iput v0, v12, Landroid/util/TypedValue;->data:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Resources"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_1
    move-exception v0

    :cond_9
    :goto_6
    nop

    :goto_7
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, v12, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_5

    :cond_a
    invoke-direct/range {p0 .. p4}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_8
    instance-of v1, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    :cond_b
    move/from16 v19, v2

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v18, 0x1

    goto :goto_9

    :cond_c
    move/from16 v18, v9

    :goto_9
    if-eqz v18, :cond_d

    if-eqz v15, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    :cond_d
    if-eqz v0, :cond_e

    iget v1, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v16, :cond_e

    move-object v1, v10

    move-object v2, v12

    move/from16 v3, v17

    move-object v4, v7

    move-wide/from16 v20, v5

    move-object v5, v15

    move/from16 v6, v18

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-wide/from16 v7, v20

    move v12, v9

    move-object v9, v0

    :try_start_3
    invoke-direct/range {v1 .. v9}, Landroid/content/res/ResourcesImpl;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    if-eqz v19, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v2

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    :cond_e
    move-wide/from16 v20, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    :cond_f
    :goto_a
    return-object v0

    :catch_3
    move-exception v0

    move v12, v9

    :goto_b
    move-object v1, v0

    :try_start_4
    invoke-virtual {v10, v13}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v2, v0

    const-string v0, "(missing name)"

    :goto_c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    new-array v3, v12, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v2
.end method

.method public loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .locals 9

    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-wide/16 v3, 0x2000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string/jumbo v5, "xml"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string v6, "font"

    invoke-virtual {p0, v0, p3, v5, v6}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    nop

    invoke-static {v5, p1}, Landroid/content/res/FontResourcesParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    nop

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v6, v7, v0}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object v7

    :cond_3
    :try_start_2
    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v5, v0, v6}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object v5

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_3
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-object v2

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_4
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is not a Font: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v1, v5

    if-ne v6, p3, :cond_0

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    aget-object v6, v2, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v6

    monitor-exit v0

    return-object v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v5, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v4

    iput v6, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    aget-object v7, v3, v6

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->close()V

    :cond_2
    aput p3, v1, v6

    aput-object p1, v2, v6

    aput-object v5, v3, v6

    invoke-virtual {v5}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v8

    monitor-exit v0

    return-object v8

    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from xml type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_4
    :goto_1
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from xml type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 1

    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    return-object v0
.end method

.method newThemeImpl(Landroid/content/res/Resources$ThemeKey;)Landroid/content/res/ResourcesImpl$ThemeImpl;
    .locals 2

    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    invoke-static {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->access$000(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    return-object v0
.end method

.method openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    const-string v3, "(null)"

    goto :goto_0

    :cond_0
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final startPreloading()V
    .locals 3

    sget-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    iput-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    sget-boolean v1, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingPreloadStartTime:J

    sget-wide v1, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapSize:J

    sget v1, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapCount:J

    const-string v1, "Resources.preload"

    const-string v2, "Preload starting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "ResourcesImpl#updateConfiguration"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v6, v1, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    :cond_1
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v7}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v8

    move-object v7, v8

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_2
    and-int/lit8 v8, v0, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v8

    if-le v8, v9, :cond_4

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    invoke-static {v8}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v8, 0x0

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v7, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    if-eq v11, v12, :cond_4

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v13, Landroid/os/LocaleList;

    invoke-direct {v13, v11, v7}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_4
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v8, :cond_5

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    iput v11, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v11, v11

    const v12, 0x3bcccccd    # 0.00625f

    mul-float/2addr v11, v12

    iput v11, v8, Landroid/util/DisplayMetrics;->density:F

    :cond_5
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->fontScale:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_6

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_1

    :cond_6
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr v11, v12

    iput v11, v8, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v8, v11, :cond_7

    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_2
    move/from16 v23, v11

    goto :goto_3

    :cond_7
    iget-object v8, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2

    :goto_3
    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v11, v9, :cond_8

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_8

    const/4 v9, 0x3

    goto :goto_4

    :cond_8
    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboardHidden:I

    :goto_4
    move/from16 v20, v9

    iget-object v12, v1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v9, Landroid/content/res/Configuration;->mcc:I

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v9, Landroid/content/res/Configuration;->mnc:I

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v9, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iget-object v11, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->touchscreen:I

    iget-object v4, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v5, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->keyboard:I

    iget-object v10, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->navigation:I

    iget-object v2, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v3, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v31, v7

    iget-object v7, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v32, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v33, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v34, v0

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->colorMode:I

    sget v30, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    move/from16 v16, v9

    move/from16 v17, v11

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v21, v10

    move/from16 v22, v8

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v7

    move/from16 v27, v33

    move/from16 v28, v34

    move/from16 v29, v0

    invoke-virtual/range {v12 .. v30}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v2, v32

    invoke-virtual {v0, v2}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v0, v2}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v2}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, v1, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    :cond_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
