.class public Landroid/net/OemHttpClient;
.super Ljava/lang/Object;
.source "OemHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/OemHttpClient$DateTimeXmlParseHandler;
    }
.end annotation


# static fields
.field private static final AVERAGE_RECEIVE_TIME:J = 0x340L

.field private static final DEBUG:Z = true

.field private static final GMT_BEIJING_OFFSET:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "OemHttpClient"

.field private static final oemServerURL_RANDOM:Ljava/lang/String; = "http://newds01.myoppo.com/autotime/dateandtime.xml?number="

.field private static final oemServerURL_RANDOM2:Ljava/lang/String; = "http://newds02.myoppo.com/autotime/dateandtime.xml?number="


# instance fields
.field private mHttpTime:J

.field private mHttpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private forceRefreshTimeFromOemServer(Landroid/content/Context;II)Z
    .locals 51
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selServerUrl"    # I
    .param p3, "timeout"    # I

    move-object/from16 v1, p0

    .line 66
    move/from16 v2, p3

    const/4 v3, 0x0

    .line 67
    .local v3, "returnFlag":Z
    const/4 v4, 0x0

    .line 68
    .local v4, "url":Ljava/net/URL;
    const-string v0, "OemHttpClient"

    const-string v5, "Enter forceRefreshTimeFromOemServer run"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    const-string v0, "http://newds01.myoppo.com/autotime/dateandtime.xml?number="
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 71
    .local v0, "oemServerURL":Ljava/lang/String;
    if-lez p2, :cond_0

    .line 72
    :try_start_1
    const-string v6, "http://newds02.myoppo.com/autotime/dateandtime.xml?number="
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v6

    goto :goto_0

    .line 197
    .end local v0    # "oemServerURL":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v25, v3

    goto/16 :goto_6

    .line 74
    .restart local v0    # "oemServerURL":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 75
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object v4, v6

    .line 77
    :try_start_3
    const-string v6, "OemHttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cur http request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, "httpconn":Ljava/net/HttpURLConnection;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v8

    .line 83
    .local v8, "proxyPort":I
    const-string v9, "OemHttpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OemServer proxyHost = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " proxyPort = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct/range {p0 .. p1}, Landroid/net/OemHttpClient;->getNetType(Landroid/content/Context;)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v9, :cond_1

    .line 87
    :try_start_4
    const-string v9, "OemHttpClient"

    const-string v10, "Get network type success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    move-object v6, v9

    .line 89
    const-string v9, "OemHttpClient"

    const-string v10, "HttpURLConnection open openConnection success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 91
    :cond_1
    :try_start_5
    const-string v9, "OemHttpClient"

    const-string v10, "Use http proxy!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v9, Ljava/net/Proxy;

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v9, v10, v11}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 94
    .local v9, "proxy":Ljava/net/Proxy;
    invoke-virtual {v4, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    move-object v6, v10

    .line 96
    .end local v9    # "proxy":Ljava/net/Proxy;
    :goto_1
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 99
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 107
    const-string v11, "OemHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timeout:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 109
    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 112
    .local v11, "requestTicks":J
    const-string v13, "OemHttpClient"

    const-string v14, "Strart to connect http server!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 116
    const-string v13, "OemHttpClient"

    const-string v14, "Connect http server success!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v13, 0x0

    .line 127
    .local v13, "mInputStreamReader":Ljava/io/InputStreamReader;
    const/4 v14, 0x0

    .line 128
    .local v14, "mBufferedReader":Ljava/io/BufferedReader;
    const-string v15, ""

    .line 129
    .local v15, "mDateTimeXmlString":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 130
    .local v16, "mBeginParseTime":J
    const-wide/16 v18, 0x0

    .line 131
    .local v18, "responseTicks":J
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Landroid/net/OemHttpClient;->mHttpTimeReference:J

    .line 133
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 134
    .local v9, "responseCode":I
    const-string v10, "OemHttpClient"

    move-object/from16 v22, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .end local v0    # "oemServerURL":Ljava/lang/String;
    .local v22, "oemServerURL":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http responseCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 135
    const/16 v0, 0xc8

    if-ne v9, v0, :cond_3

    .line 137
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-wide/from16 v16, v23

    .line 139
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string/jumbo v10, "utf-8"

    invoke-direct {v0, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v13, v0

    .line 140
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v14, v0

    .line 141
    const-string v0, ""

    .line 142
    .local v0, "lineString":Ljava/lang/String;
    :goto_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_2

    .line 143
    move-object v15, v0

    goto :goto_2

    .line 145
    :cond_2
    const-string v2, "OemHttpClient"

    const-string v10, "Read response data success!"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 147
    .end local v0    # "lineString":Ljava/lang/String;
    :cond_3
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-wide/from16 v18, v23

    .line 148
    move/from16 v25, v3

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 148
    .end local v3    # "returnFlag":Z
    .local v25, "returnFlag":Z
    iput-wide v2, v1, Landroid/net/OemHttpClient;->mHttpTimeReference:J

    .line 150
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 151
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V

    .line 152
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    const-string v0, "OemHttpClient"

    const-string v2, "Start to parser http response data!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 157
    .local v0, "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 158
    .local v2, "mSaxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 159
    .local v3, "mXmlReader":Lorg/xml/sax/XMLReader;
    new-instance v10, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;

    invoke-direct {v10, v1}, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;-><init>(Landroid/net/OemHttpClient;)V

    .line 160
    .local v10, "mDateTimeXmlParseHandler":Landroid/net/OemHttpClient$DateTimeXmlParseHandler;
    invoke-interface {v3, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 161
    move-object/from16 v26, v0

    new-instance v0, Lorg/xml/sax/InputSource;

    .line 161
    .end local v0    # "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .local v26, "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    move-object/from16 v27, v2

    new-instance v2, Ljava/io/StringReader;

    .line 161
    .end local v2    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .local v27, "mSaxParser":Ljavax/xml/parsers/SAXParser;
    invoke-direct {v2, v15}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 163
    invoke-virtual {v10}, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "mDateString":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "dateStrings":[Ljava/lang/String;
    move-object/from16 v28, v0

    const/4 v0, 0x3

    .line 165
    .end local v0    # "mDateString":Ljava/lang/String;
    .local v28, "mDateString":Ljava/lang/String;
    move-object/from16 v29, v3

    new-array v3, v0, [I

    .line 166
    .local v3, "mIntDateData":[I
    .local v29, "mXmlReader":Lorg/xml/sax/XMLReader;
    const/16 v23, 0x0

    .line 166
    .local v23, "i":I
    :goto_3
    move/from16 v30, v23

    .line 166
    .end local v23    # "i":I
    .local v30, "i":I
    array-length v0, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v31, v4

    move/from16 v4, v30

    if-ge v4, v0, :cond_4

    .line 167
    .end local v30    # "i":I
    .local v4, "i":I
    .local v31, "url":Ljava/net/URL;
    :try_start_9
    aget-object v0, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v4

    .line 166
    add-int/lit8 v23, v4, 0x1

    .line 166
    .end local v4    # "i":I
    .restart local v23    # "i":I
    move-object/from16 v4, v31

    const/4 v0, 0x3

    goto :goto_3

    .line 197
    .end local v2    # "dateStrings":[Ljava/lang/String;
    .end local v3    # "mIntDateData":[I
    .end local v6    # "httpconn":Ljava/net/HttpURLConnection;
    .end local v7    # "proxyHost":Ljava/lang/String;
    .end local v8    # "proxyPort":I
    .end local v9    # "responseCode":I
    .end local v10    # "mDateTimeXmlParseHandler":Landroid/net/OemHttpClient$DateTimeXmlParseHandler;
    .end local v11    # "requestTicks":J
    .end local v13    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .end local v14    # "mBufferedReader":Ljava/io/BufferedReader;
    .end local v15    # "mDateTimeXmlString":Ljava/lang/String;
    .end local v16    # "mBeginParseTime":J
    .end local v18    # "responseTicks":J
    .end local v22    # "oemServerURL":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v26    # "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v27    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .end local v28    # "mDateString":Ljava/lang/String;
    .end local v29    # "mXmlReader":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v0

    .line 197
    .end local v31    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    :goto_4
    move-object/from16 v4, v31

    goto/16 :goto_6

    .line 170
    .end local v4    # "url":Ljava/net/URL;
    .restart local v2    # "dateStrings":[Ljava/lang/String;
    .restart local v3    # "mIntDateData":[I
    .restart local v6    # "httpconn":Ljava/net/HttpURLConnection;
    .restart local v7    # "proxyHost":Ljava/lang/String;
    .restart local v8    # "proxyPort":I
    .restart local v9    # "responseCode":I
    .restart local v10    # "mDateTimeXmlParseHandler":Landroid/net/OemHttpClient$DateTimeXmlParseHandler;
    .restart local v11    # "requestTicks":J
    .restart local v13    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .restart local v14    # "mBufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "mDateTimeXmlString":Ljava/lang/String;
    .restart local v16    # "mBeginParseTime":J
    .restart local v18    # "responseTicks":J
    .restart local v22    # "oemServerURL":Ljava/lang/String;
    .restart local v26    # "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v27    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .restart local v28    # "mDateString":Ljava/lang/String;
    .restart local v29    # "mXmlReader":Lorg/xml/sax/XMLReader;
    .restart local v31    # "url":Ljava/net/URL;
    :cond_4
    invoke-virtual {v10}, Landroid/net/OemHttpClient$DateTimeXmlParseHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "mTimeString":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "timeStrings":[Ljava/lang/String;
    move-object/from16 v32, v0

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 173
    .local v0, "mIntTimeData":[I
    .local v32, "mTimeString":Ljava/lang/String;
    const/16 v23, 0x0

    .line 173
    .restart local v23    # "i":I
    :goto_5
    move/from16 v33, v23

    .line 173
    .end local v23    # "i":I
    .local v33, "i":I
    move-object/from16 v34, v2

    array-length v2, v4

    .line 173
    .end local v2    # "dateStrings":[Ljava/lang/String;
    .local v34, "dateStrings":[Ljava/lang/String;
    move/from16 v5, v33

    if-ge v5, v2, :cond_5

    .line 174
    .end local v33    # "i":I
    .local v5, "i":I
    aget-object v2, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v5

    .line 173
    add-int/lit8 v23, v5, 0x1

    .line 173
    .end local v5    # "i":I
    .restart local v23    # "i":I
    move-object/from16 v2, v34

    goto :goto_5

    .line 177
    .end local v23    # "i":I
    :cond_5
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 178
    .local v2, "mOemServerTime":Landroid/text/format/Time;
    const-string v5, "OemHttpClient"

    move-object/from16 v42, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .line 178
    .end local v4    # "timeStrings":[Ljava/lang/String;
    .local v42, "timeStrings":[Ljava/lang/String;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v43, v6

    const-string v6, "Parser time success, hour= "

    .line 178
    .end local v6    # "httpconn":Ljava/net/HttpURLConnection;
    .local v43, "httpconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v44, v7

    const/4 v6, 0x0

    aget v7, v0, v6

    .line 178
    .end local v7    # "proxyHost":Ljava/lang/String;
    .local v44, "proxyHost":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " minute = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "seconds ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    aget v36, v0, v6

    const/4 v4, 0x1

    aget v37, v0, v4

    const/4 v5, 0x0

    aget v38, v0, v5

    aget v39, v3, v6

    aget v6, v3, v4

    add-int/lit8 v40, v6, -0x1

    aget v41, v3, v5

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v41}, Landroid/text/format/Time;->set(IIIIII)V

    .line 182
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/32 v6, 0x1b77400

    sub-long/2addr v4, v6

    .line 184
    .local v4, "mGMTTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 185
    .local v6, "mEndParseTime":J
    move-object/from16 v45, v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 185
    .end local v0    # "mIntTimeData":[I
    .local v45, "mIntTimeData":[I
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    move-object/from16 v47, v2

    move-object/from16 v46, v3

    int-to-long v2, v0

    .line 185
    .end local v2    # "mOemServerTime":Landroid/text/format/Time;
    .end local v3    # "mIntDateData":[I
    .local v46, "mIntDateData":[I
    .local v47, "mOemServerTime":Landroid/text/format/Time;
    add-long/2addr v2, v4

    sub-long v20, v6, v16

    add-long v2, v2, v20

    const-wide/16 v20, 0x340

    add-long v2, v2, v20

    .line 188
    .local v2, "mNow":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    move-wide/from16 v48, v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 188
    .end local v6    # "mEndParseTime":J
    .local v48, "mEndParseTime":J
    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    sub-int/2addr v0, v6

    .line 190
    .local v0, "daylightOffset":I
    int-to-long v6, v0

    add-long/2addr v6, v2

    iput-wide v6, v1, Landroid/net/OemHttpClient;->mHttpTime:J

    .line 192
    sub-long v6, v18, v11

    iput-wide v6, v1, Landroid/net/OemHttpClient;->mRoundTripTime:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 193
    const/4 v6, 0x1

    .line 195
    .end local v25    # "returnFlag":Z
    .local v6, "returnFlag":Z
    :try_start_a
    const-string/jumbo v7, "persist.sys.lasttime"

    move/from16 v50, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 195
    .end local v0    # "daylightOffset":I
    .local v50, "daylightOffset":I
    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 200
    .end local v2    # "mNow":J
    .end local v4    # "mGMTTime":J
    .end local v8    # "proxyPort":I
    .end local v9    # "responseCode":I
    .end local v10    # "mDateTimeXmlParseHandler":Landroid/net/OemHttpClient$DateTimeXmlParseHandler;
    .end local v11    # "requestTicks":J
    .end local v13    # "mInputStreamReader":Ljava/io/InputStreamReader;
    .end local v14    # "mBufferedReader":Ljava/io/BufferedReader;
    .end local v15    # "mDateTimeXmlString":Ljava/lang/String;
    .end local v16    # "mBeginParseTime":J
    .end local v18    # "responseTicks":J
    .end local v22    # "oemServerURL":Ljava/lang/String;
    .end local v26    # "mSaxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v27    # "mSaxParser":Ljavax/xml/parsers/SAXParser;
    .end local v28    # "mDateString":Ljava/lang/String;
    .end local v29    # "mXmlReader":Lorg/xml/sax/XMLReader;
    .end local v32    # "mTimeString":Ljava/lang/String;
    .end local v34    # "dateStrings":[Ljava/lang/String;
    .end local v42    # "timeStrings":[Ljava/lang/String;
    .end local v43    # "httpconn":Ljava/net/HttpURLConnection;
    .end local v44    # "proxyHost":Ljava/lang/String;
    .end local v45    # "mIntTimeData":[I
    .end local v46    # "mIntDateData":[I
    .end local v47    # "mOemServerTime":Landroid/text/format/Time;
    .end local v48    # "mEndParseTime":J
    .end local v50    # "daylightOffset":I
    goto :goto_7

    .line 197
    :catch_2
    move-exception v0

    move/from16 v25, v6

    goto/16 :goto_4

    .line 197
    .end local v6    # "returnFlag":Z
    .end local v31    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    .restart local v25    # "returnFlag":Z
    :catch_3
    move-exception v0

    move-object/from16 v31, v4

    .line 197
    .end local v4    # "url":Ljava/net/URL;
    .restart local v31    # "url":Ljava/net/URL;
    goto :goto_6

    .line 197
    .end local v25    # "returnFlag":Z
    .end local v31    # "url":Ljava/net/URL;
    .local v3, "returnFlag":Z
    .restart local v4    # "url":Ljava/net/URL;
    :catch_4
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v31, v4

    .line 197
    .end local v3    # "returnFlag":Z
    .end local v4    # "url":Ljava/net/URL;
    .restart local v25    # "returnFlag":Z
    .restart local v31    # "url":Ljava/net/URL;
    goto :goto_6

    .line 197
    .end local v25    # "returnFlag":Z
    .end local v31    # "url":Ljava/net/URL;
    .restart local v3    # "returnFlag":Z
    .restart local v4    # "url":Ljava/net/URL;
    :catch_5
    move-exception v0

    move/from16 v25, v3

    .line 198
    .end local v3    # "returnFlag":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v25    # "returnFlag":Z
    :goto_6
    const-string v2, "OemHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OemServer exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v6, 0x0

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v25    # "returnFlag":Z
    .restart local v6    # "returnFlag":Z
    move-object/from16 v31, v4

    .line 202
    .end local v4    # "url":Ljava/net/URL;
    .restart local v31    # "url":Ljava/net/URL;
    :goto_7
    return v6
.end method

.method private getNetType(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 207
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 208
    return v1

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 212
    .local v2, "info":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 213
    return v1

    .line 216
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "type":Ljava/lang/String;
    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 218
    return v5

    .line 219
    :cond_2
    const-string v4, "MOBILE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "GPRS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 228
    :cond_3
    return v5

    .line 220
    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "apn":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v6, "cmwap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 222
    return v1

    .line 224
    :cond_5
    return v5
.end method


# virtual methods
.method public getHttpTime()J
    .locals 2

    .line 311
    iget-wide v0, p0, Landroid/net/OemHttpClient;->mHttpTime:J

    return-wide v0
.end method

.method public getHttpTimeReference()J
    .locals 2

    .line 321
    iget-wide v0, p0, Landroid/net/OemHttpClient;->mHttpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .line 330
    iget-wide v0, p0, Landroid/net/OemHttpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Landroid/content/Context;II)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selServerUrl"    # I
    .param p3, "timeout"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/net/OemHttpClient;->forceRefreshTimeFromOemServer(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method
