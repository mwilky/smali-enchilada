.class Lcom/google/tagmanager/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Runtime$CachedMacro;,
        Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;,
        Lcom/google/tagmanager/Runtime$MacroInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_RULE_NAME:Ljava/lang/String; = "Unknown"

.field private static final DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field static final EXPERIMENT_SUPPLEMENTAL_NAME_PREFIX:Ljava/lang/String; = "gaExperiment:"

.field private static final MAX_CACHE_SIZE:I = 0x100000


# instance fields
.field private final eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

.field private volatile mCurrentEventName:Ljava/lang/String;

.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;

.field private final mFunctionCallCache:Lcom/google/tagmanager/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/Cache<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMacroEvaluationCache:Lcom/google/tagmanager/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/Cache<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$CachedMacro;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacroLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$MacroInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacroMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredicateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

.field private final mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackingTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V
    .locals 7

    new-instance v6, Lcom/google/tagmanager/NoopEventInfoDistributor;

    invoke-direct {v6}, Lcom/google/tagmanager/NoopEventInfoDistributor;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz v2, :cond_9

    iput-object v2, v0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    new-instance v4, Ljava/util/HashSet;

    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getRules()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    iput-object v3, v0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    new-instance v5, Lcom/google/tagmanager/Runtime$1;

    invoke-direct {v5, v0}, Lcom/google/tagmanager/Runtime$1;-><init>(Lcom/google/tagmanager/Runtime;)V

    new-instance v6, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v6}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7, v5}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object v6

    iput-object v6, v0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    new-instance v6, Lcom/google/tagmanager/Runtime$2;

    invoke-direct {v6, v0}, Lcom/google/tagmanager/Runtime$2;-><init>(Lcom/google/tagmanager/Runtime;)V

    new-instance v8, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v8}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    invoke-virtual {v8, v7, v6}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object v7

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    new-instance v7, Lcom/google/tagmanager/ArbitraryPixelTag;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/ArbitraryPixelTag;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/CustomFunctionCall;

    move-object/from16 v8, p5

    invoke-direct {v7, v8}, Lcom/google/tagmanager/CustomFunctionCall;-><init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/DataLayerWriteTag;

    invoke-direct {v7, v3}, Lcom/google/tagmanager/DataLayerWriteTag;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/UniversalAnalyticsTag;

    invoke-direct {v7, v1, v3}, Lcom/google/tagmanager/UniversalAnalyticsTag;-><init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    new-instance v7, Lcom/google/tagmanager/ContainsPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/ContainsPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/EndsWithPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/EndsWithPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/EqualsPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/EqualsPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/GreaterEqualsPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/GreaterEqualsPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/GreaterThanPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/GreaterThanPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/LessEqualsPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/LessEqualsPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/LessThanPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/LessThanPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/RegexPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/RegexPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/StartsWithPredicate;

    invoke-direct {v7}, Lcom/google/tagmanager/StartsWithPredicate;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    new-instance v7, Lcom/google/tagmanager/AdvertiserIdMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AdvertiserIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/AdvertisingTrackingEnabledMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/AdvertisingTrackingEnabledMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/AdwordsClickReferrerMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AdwordsClickReferrerMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/AppIdMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AppIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/AppNameMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AppNameMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/AppVersionMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/AppVersionMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/ConstantMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/ConstantMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/ContainerVersionMacro;

    invoke-direct {v7, v0}, Lcom/google/tagmanager/ContainerVersionMacro;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/CustomFunctionCall;

    move-object/from16 v9, p4

    invoke-direct {v7, v9}, Lcom/google/tagmanager/CustomFunctionCall;-><init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/DataLayerMacro;

    invoke-direct {v7, v3}, Lcom/google/tagmanager/DataLayerMacro;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/DeviceIdMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/DeviceIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/DeviceNameMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/DeviceNameMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/EncodeMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/EncodeMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/EventMacro;

    invoke-direct {v7, v0}, Lcom/google/tagmanager/EventMacro;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/GtmVersionMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/GtmVersionMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/HashMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/HashMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/InstallReferrerMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/InstallReferrerMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/JoinerMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/JoinerMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/LanguageMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/LanguageMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/MobileAdwordsUniqueIdMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/MobileAdwordsUniqueIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/OsVersionMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/OsVersionMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/PlatformMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/PlatformMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/RandomMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/RandomMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/RegexGroupMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/RegexGroupMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/ResolutionMacro;

    invoke-direct {v7, v1}, Lcom/google/tagmanager/ResolutionMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/RuntimeVersionMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/RuntimeVersionMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/SdkVersionMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/SdkVersionMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Lcom/google/tagmanager/TimeMacro;

    invoke-direct {v7}, Lcom/google/tagmanager/TimeMacro;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    iget-object v7, v0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v12

    const-string v13, "add macro"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v12

    const-string v13, "remove macro"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTags()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTagRuleNames()Ljava/util/List;

    move-result-object v12

    const-string v13, "add tag"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTags()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTagRuleNames()Ljava/util/List;

    move-result-object v12

    const-string v13, "remove tag"

    invoke-static {v11, v12, v13}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    const-string v14, "Unknown"

    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_1

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Ljava/lang/String;

    :cond_1
    iget-object v15, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-static {v13}, Lcom/google/tagmanager/Runtime;->getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V

    invoke-virtual {v11, v10, v13}, Lcom/google/tagmanager/Runtime$MacroInfo;->addAddMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    invoke-virtual {v11, v10, v14}, Lcom/google/tagmanager/Runtime$MacroInfo;->addAddMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_2
    move/from16 v11, v16

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    const-string v13, "Unknown"

    invoke-interface/range {p6 .. p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_3

    invoke-virtual {v10}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Ljava/lang/String;

    :cond_3
    iget-object v14, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-static {v12}, Lcom/google/tagmanager/Runtime;->getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V

    invoke-virtual {v14, v10, v12}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRemoveMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    invoke-virtual {v14, v10, v13}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRemoveMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V

    add-int/lit8 v16, v11, 0x1

    goto :goto_2

    :cond_4
    goto/16 :goto_0

    :cond_5
    iget-object v7, v0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    invoke-virtual {v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getAllMacros()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v12}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v13

    sget-object v14, Lcom/google/analytics/containertag/common/Key;->NOT_DEFAULT_MACRO:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v14}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v13}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, v0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/google/tagmanager/Runtime$MacroInfo;->setDefault(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    :cond_6
    goto :goto_4

    :cond_7
    goto :goto_3

    :cond_8
    return-void

    :cond_9
    move-object/from16 v9, p4

    move-object/from16 v8, p5

    move-object/from16 v4, p6

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "resource cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate function type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    invoke-interface {p4}, Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;->createResolvedRuleBuilder()Lcom/google/tagmanager/ResolvedRuleBuilder;

    move-result-object v5

    invoke-virtual {p0, v4, p2, v5}, Lcom/google/tagmanager/Runtime;->evaluatePredicatesInRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p3, v4, v0, v1, v5}, Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;->rulePassed(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v6}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move v2, v7

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p4, v0}, Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;->setEnabledFunctions(Ljava/util/Set;)V

    new-instance v3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v3, v0, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v3
.end method

.method private evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/MacroEvaluationInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Runtime$CachedMacro;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v1}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$CachedMacro;->getPushAfterEvaluate()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/google/tagmanager/Runtime;->pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$CachedMacro;->getObjectAndStatic()Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/Runtime$MacroInfo;

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid macro: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    sget-object v2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRules()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getAddMacros()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getAddMacroRuleNames()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRemoveMacros()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRemoveMacroRuleNames()Ljava/util/Map;

    move-result-object v9

    invoke-interface {p3}, Lcom/google/tagmanager/MacroEvaluationInfoBuilder;->createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;

    move-result-object v11

    move-object v3, p0

    move-object v4, p1

    move-object v10, p2

    invoke-virtual/range {v3 .. v11}, Lcom/google/tagmanager/Runtime;->calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;->getDefault()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple macros active for macroName "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    :goto_0
    if-nez v3, :cond_4

    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v4

    :cond_4
    iget-object v4, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/tagmanager/MacroEvaluationInfoBuilder;->createResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v6

    invoke-direct {p0, v4, v3, p2, v6}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v4, v6, :cond_6

    sget-object v6, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    goto :goto_2

    :cond_6
    new-instance v6, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v4}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    :goto_2
    invoke-virtual {v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getPushAfterEvaluate()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    new-instance v9, Lcom/google/tagmanager/Runtime$CachedMacro;

    invoke-direct {v9, v6, v7}, Lcom/google/tagmanager/Runtime$CachedMacro;-><init>(Lcom/google/tagmanager/ObjectAndStatic;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    invoke-interface {v8, p1, v9}, Lcom/google/tagmanager/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0, v7, p2}, Lcom/google/tagmanager/Runtime;->pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V

    return-object v6
.end method

.method private executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedFunctionCallBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/google/analytics/containertag/common/Key;->FUNCTION:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v4}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_0

    const-string v4, "No function id in properties"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v4

    :cond_0
    iget-object v4, v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/FunctionCallImplementation;

    if-nez v6, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has no backing implementation."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    sget-object v7, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v7

    :cond_1
    iget-object v7, v0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    invoke-interface {v7, v1}, Lcom/google/tagmanager/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/ObjectAndStatic;

    if-eqz v7, :cond_2

    iget-object v8, v0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v8}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v8

    if-nez v8, :cond_2

    return-object v7

    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v2, v12}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->createResolvedPropertyBuilder(Ljava/lang/String;)Lcom/google/tagmanager/ResolvedPropertyBuilder;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v12, v14}, Lcom/google/tagmanager/ResolvedPropertyBuilder;->createPropertyValueBuilder(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v14

    move-object/from16 v15, p3

    invoke-direct {v0, v13, v15, v14}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v13

    sget-object v14, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v13, v14, :cond_3

    sget-object v14, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v14

    :cond_3
    invoke-virtual {v13}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1, v14, v3}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->updateCacheableProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    goto :goto_1

    :cond_4
    move-object/from16 v17, v3

    const/4 v3, 0x0

    move v9, v3

    :goto_1
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v8, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    move-object/from16 v3, v17

    goto :goto_0

    :cond_5
    move-object/from16 v15, p3

    move-object/from16 v17, v3

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/tagmanager/FunctionCallImplementation;->hasRequiredKeys(Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incorrect keys for function "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " required "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/tagmanager/FunctionCallImplementation;->getRequiredKeys()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " had "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    sget-object v3, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v3

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v6}, Lcom/google/tagmanager/FunctionCallImplementation;->isCacheable()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    new-instance v10, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v6, v8}, Lcom/google/tagmanager/FunctionCallImplementation;->evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    if-eqz v3, :cond_8

    iget-object v11, v0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    invoke-interface {v11, v1, v10}, Lcom/google/tagmanager/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v10}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v2, v11}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    return-object v10
.end method

.method private static getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/containertag/common/Key;->INSTANCE_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$MacroInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/Runtime$MacroInfo;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Runtime$MacroInfo;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/tagmanager/Runtime$MacroInfo;

    invoke-direct {v1}, Lcom/google/tagmanager/Runtime$MacroInfo;-><init>()V

    move-object v0, v1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ValueBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/tagmanager/ObjectAndStatic;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v0

    :cond_0
    iget v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v0

    :pswitch_0
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/tagmanager/ValueBuilder;->createValueMacroEvaluationInfoExtension()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/tagmanager/Runtime;->evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v0, v1}, Lcom/google/tagmanager/ValueEscapeUtil;->applyEscapings(Lcom/google/tagmanager/ObjectAndStatic;[I)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_1
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-eq v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid serving value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v1

    :cond_2
    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move v1, v2

    :goto_0
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ValueBuilder;->getMapKey(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    iget-object v4, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ValueBuilder;->getMapValue(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v4

    sget-object v5, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v3, v5, :cond_4

    sget-object v5, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v6, v5, v1

    iget-object v5, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v4}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v2

    :cond_5
    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v1, v0, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v1

    :pswitch_2
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move v1, v2

    :goto_2
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ValueBuilder;->getListItem(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v3, v4, :cond_6

    sget-object v2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v2

    :cond_6
    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v1, v0, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v1

    :cond_8
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    iget-object v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move v1, v2

    :goto_3
    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ValueBuilder;->getTemplateToken(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v3, v4, :cond_9

    sget-object v2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object v2

    :cond_9
    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {v1, v0, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pushUnevaluatedValueToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v0, v1, :cond_5

    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v3, v2}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    iget-object v6, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v6, v5}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string v5, "pushAfterEvaluate: value not a Map"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_3
    goto :goto_2

    :cond_4
    const-string v2, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " operation. Using default rule name instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    return-void
.end method

.method addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    return-void
.end method

.method addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    return-void
.end method

.method calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/tagmanager/Runtime$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/Runtime$3;-><init>(Lcom/google/tagmanager/Runtime;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v6, p8}, Lcom/google/tagmanager/Runtime;->calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    return-object v0
.end method

.method calculateTagsToRun(Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/google/tagmanager/Runtime$4;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/Runtime$4;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/tagmanager/Runtime;->calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    return-object v0
.end method

.method public evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/EventInfoDistributor;->createMacroEvalutionEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->createMacroEvaluationInfoBuilder()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/tagmanager/Runtime;->evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->processEventInfo()V

    return-object v1
.end method

.method evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedFunctionCallBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    new-instance v2, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method evaluatePredicatesInRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedRuleBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getNegativePredicates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-interface {p3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->createNegativePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v5

    invoke-virtual {p0, v2, p2, v5}, Lcom/google/tagmanager/Runtime;->evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    new-instance v3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getPositivePredicates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-interface {p3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->createPositivePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v5

    invoke-virtual {p0, v2, p2, v5}, Lcom/google/tagmanager/Runtime;->evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    new-instance v3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    move v0, v6

    goto :goto_2

    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    new-instance v1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public declared-synchronized evaluateTags(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->setCurrentEventName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/EventInfoDistributor;->createDataLayerEventEvaluationEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->createDataLayerEventEvaluationInfoBuilder()Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    invoke-interface {v1}, Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;->createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/tagmanager/Runtime;->calculateTagsToRun(Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    iget-object v4, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;->createAndAddResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v6

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->processEventInfo()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/tagmanager/Runtime;->setCurrentEventName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getCurrentEventName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mCurrentEventName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    return-object v0
.end method

.method declared-synchronized setCurrentEventName(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/tagmanager/Runtime;->mCurrentEventName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSupplementals(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$Supplemental;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string v3, "gaExperiment:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-static {v2, v1}, Lcom/google/tagmanager/ExperimentMacroHelper;->handleExperimentSupplemental(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored supplemental: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
