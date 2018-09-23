.class Lcom/android/server/net/watchlist/ReportEncoder;
.super Ljava/lang/Object;
.source "ReportEncoder.java"


# static fields
.field private static final REPORT_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReportEncoder"

.field private static final WATCHLIST_HASH_SIZE:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeWatchlistReport(Lcom/android/server/net/watchlist/WatchlistConfig;[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistConfig;",
            "[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")[B"
        }
    .end annotation

    nop

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/PrivacyUtils;->createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/net/watchlist/ReportEncoder;->serializeReport(Lcom/android/server/net/watchlist/WatchlistConfig;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1
.end method

.method static serializeReport(Lcom/android/server/net/watchlist/WatchlistConfig;Ljava/util/Map;)[B
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)[B"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "ReportEncoder"

    const-string v3, "No watchlist hash"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    array-length v2, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const-string v2, "ReportEncoder"

    const-string v3, "Unexpected hash length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v3, 0x10500000001L

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000002L

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-wide v8, 0x20b00000003L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10900000001L

    invoke-virtual {v2, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v10, 0x10800000002L

    invoke-virtual {v2, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
