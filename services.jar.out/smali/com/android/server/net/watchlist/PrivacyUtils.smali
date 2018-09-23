.class Lcom/android/server/net/watchlist/PrivacyUtils;
.super Ljava/lang/Object;
.source "PrivacyUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ENCODER_ID_PREFIX:Ljava/lang/String; = "watchlist_encoder:"

.field private static final PROB_F:D = 0.469

.field private static final PROB_P:D = 0.28

.field private static final PROB_Q:D = 1.0

.field private static final TAG:Ljava/lang/String; = "PrivacyUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p1, v4}, Lcom/android/server/net/watchlist/PrivacyUtils;->createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/android/server/net/watchlist/PrivacyUtils;->createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    move-result-object v5

    :goto_1
    iget-object v6, p3, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestList:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/privacy/DifferentialPrivacyEncoder;->encodeBoolean(Z)[B

    move-result-object v7

    aget-byte v7, v7, v2

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    move v7, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/android/server/net/watchlist/PrivacyUtils;->createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object v0

    invoke-static {v0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    move-result-object v1

    return-object v1
.end method

.method private static createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .locals 9

    new-instance v8, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "watchlist_encoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x3fde04189374bc6aL    # 0.469

    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;-><init>(Ljava/lang/String;DDD)V

    return-object v8
.end method

.method static createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/android/server/net/watchlist/PrivacyUtils;->createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    move-result-object v1

    return-object v1
.end method
