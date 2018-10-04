.class public final Landroid/view/textclassifier/GenerateLinksLogger;
.super Ljava/lang/Object;
.source "GenerateLinksLogger.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GenerateLinksLogger"

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mRng:Ljava/util/Random;

.field private final mSampleRate:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mSampleRate:I

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mRng:Ljava/util/Random;

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/logging/MetricsLogger;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mSampleRate:I

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mRng:Ljava/util/Random;

    iput-object p2, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method private static debugLog(Landroid/metrics/LogMaker;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$logGenerateLinks$0(Ljava/lang/String;)Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;
    .locals 2

    new-instance v0, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;-><init>(Landroid/view/textclassifier/GenerateLinksLogger$1;)V

    return-object v0
.end method

.method private shouldLog()Z
    .locals 3

    iget v0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mSampleRate:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mRng:Ljava/util/Random;

    iget v2, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mSampleRate:I

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private writeStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;Ljava/lang/CharSequence;J)V
    .locals 3

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x521

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x527

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    iget v1, p4, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->mNumLinks:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x524

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    iget v1, p4, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->mNumLinksTextLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x525

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x523

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x522

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    if-eqz p3, :cond_0

    const/16 v1, 0x526

    invoke-virtual {v0, v1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/GenerateLinksLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-static {v0}, Landroid/view/textclassifier/GenerateLinksLogger;->debugLog(Landroid/metrics/LogMaker;)V

    return-void
.end method


# virtual methods
.method public logGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks;Ljava/lang/String;J)V
    .locals 13

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/textclassifier/GenerateLinksLogger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;-><init>(Landroid/view/textclassifier/GenerateLinksLogger$1;)V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v5, "other"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->countLink(Landroid/view/textclassifier/TextLinks$TextLink;)V

    sget-object v5, Landroid/view/textclassifier/-$$Lambda$GenerateLinksLogger$vmbT_h7MLlbrIm0lJJwA-eHQhXk;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$GenerateLinksLogger$vmbT_h7MLlbrIm0lJJwA-eHQhXk;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;

    invoke-virtual {v5, v3}, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;->countLink(Landroid/view/textclassifier/TextLinks$TextLink;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v6, v0

    move-object v7, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Landroid/view/textclassifier/GenerateLinksLogger;->writeStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;Ljava/lang/CharSequence;J)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;

    move-object v3, p0

    move-object v4, v11

    move-object/from16 v5, p3

    move-object v8, p1

    move-wide/from16 v9, p4

    invoke-direct/range {v3 .. v10}, Landroid/view/textclassifier/GenerateLinksLogger;->writeStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/GenerateLinksLogger$LinkifyStats;Ljava/lang/CharSequence;J)V

    goto :goto_1

    :cond_5
    return-void
.end method
