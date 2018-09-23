.class Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;
.super Ljava/lang/Object;
.source "SimpleNetworkDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Dispatcher;


# static fields
.field private static final USER_AGENT_TEMPLATE:Ljava/lang/String; = "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private mOverrideHostUrl:Ljava/net/URL;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V
    .locals 1

    invoke-static {p2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/analytics/tracking/android/GoogleAnalytics;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/analytics/tracking/android/GoogleAnalytics;Landroid/content/Context;)V
    .locals 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    const-string v2, "GoogleAnalytics"

    const-string v3, "3.0"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    return-void
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Empty hit, discarding."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7f4

    if-ge v2, v3, :cond_1

    new-instance v1, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v2, "GET"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v3, "POST"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move-object v1, v2

    :goto_0
    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v3

    const-string v4, "Encoding error, discarding hit"

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return-object v1
.end method

.method private logDebugInformation(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    const-string v4, "POST:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Error Writing hit to log..."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void
.end method

.method createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatchHits(Ljava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    move v3, v0

    :goto_0
    if-ge v4, v2, :cond_a

    move-object/from16 v6, p1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v1, v7}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->getUrl(Lcom/google/analytics/tracking/android/Hit;)Ljava/net/URL;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No destination: discarding hit: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "No destination: discarding hit."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_1
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v10

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/analytics/tracking/android/HitBuilder;->postProcessHit(Lcom/google/analytics/tracking/android/Hit;J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v11, v0

    invoke-direct {v1, v11, v10}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v12

    if-nez v12, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_3
    const-string v0, "Host"

    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {v1, v12}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->logDebugInformation(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v13, 0x2000

    if-le v0, v13, :cond_5

    const-string v0, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    iget-object v0, v1, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Dry run enabled. Hit not actually sent."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    if-eqz v5, :cond_7

    :try_start_0
    iget-object v0, v1, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GANetworkReceiver;->sendRadioPoweredBroadcast(Landroid/content/Context;)V

    const/4 v0, 0x0

    move v5, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_7
    :goto_3
    iget-object v0, v1, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v9, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_8
    const/16 v15, 0xc8

    if-eq v13, v15, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad response: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception sending hit: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    return v3

    :goto_5
    nop

    const-string v1, "ClientProtocolException sending hit; discarding hit..."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :cond_9
    :goto_6
    nop

    :goto_7
    add-int/lit8 v3, v3, 0x1

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v6, p1

    return v3
.end method

.method getUrl(Lcom/google/analytics/tracking/android/Hit;)Ljava/net/URL;
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Hit;->getHitUrlScheme()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "http://www.google-analytics.com/collect"

    goto :goto_0

    :cond_1
    const-string v2, "https://ssl.google-analytics.com/collect"

    :goto_0
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Error trying to parse the hardcoded host url. This really shouldn\'t happen."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public okToDispatch()Z
    .locals 3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    :goto_0
    const-string v2, "...no network connectivity"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public overrideHostUrl(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->mOverrideHostUrl:Ljava/net/URL;

    :goto_0
    return-void
.end method
