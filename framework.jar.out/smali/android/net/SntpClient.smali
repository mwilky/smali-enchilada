.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    const/16 v0, 0xf

    if-gt p2, v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTime"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private read32([BI)J
    .locals 13

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    and-int/lit8 v4, v0, 0x7f

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    and-int/lit16 v6, v1, 0x80

    if-ne v6, v5, :cond_1

    and-int/lit8 v6, v1, 0x7f

    add-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    and-int/lit16 v7, v2, 0x80

    if-ne v7, v5, :cond_2

    and-int/lit8 v7, v2, 0x7f

    add-int/2addr v7, v5

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v5, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/2addr v5, v8

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    return-wide v8
.end method

.method private readTimeStamp([BI)J
    .locals 10

    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    :cond_0
    const-wide v4, 0x83aa7e80L

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    mul-long/2addr v6, v2

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 15

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x8

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_0
    const-wide/16 v4, 0x3e8

    div-long v6, p3, v4

    mul-long v8, v6, v4

    sub-long v8, p3, v8

    const-wide v10, 0x83aa7e80L

    add-long/2addr v6, v10

    add-int/lit8 v2, v1, 0x1

    const/16 v10, 0x18

    shr-long v11, v6, v10

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v11, 0x10

    shr-long v12, v6, v11

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x8

    shr-long v10, v6, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-long v10, v6, v3

    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const-wide v2, 0x100000000L

    mul-long/2addr v2, v8

    div-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x18

    shr-long v10, v2, v5

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v4, 0x1

    const/16 v5, 0x10

    shr-long v10, v2, v5

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x1

    shr-long v10, v2, v12

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v12

    double-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SntpClient"

    const-string v1, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public requestTime(Ljava/lang/String;ILandroid/net/Network;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/net/Network;->setPrivateDnsBypass(Z)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v1

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SntpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request time failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .locals 41

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/16 v0, -0xbf

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    move v3, v0

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object v2, v0

    move-object/from16 v5, p4

    invoke-virtual {v5, v2}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    move/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v7, Ljava/net/DatagramPacket;

    array-length v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v9, p1

    move/from16 v10, p2

    :try_start_1
    invoke-direct {v7, v0, v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v8, 0x1b

    aput-byte v8, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/16 v8, 0x28

    invoke-direct {v1, v0, v8, v11, v12}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    invoke-virtual {v2, v7}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v15, Ljava/net/DatagramPacket;

    array-length v8, v0

    invoke-direct {v15, v0, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v8, v15

    invoke-virtual {v2, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v18, v16

    move-wide/from16 v4, v18

    sub-long v18, v4, v13

    add-long v18, v11, v18

    const/4 v15, 0x0

    aget-byte v16, v0, v15

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v15, v16, 0x3

    int-to-byte v15, v15

    const/16 v16, 0x0

    aget-byte v17, v0, v16

    and-int/lit8 v6, v17, 0x7

    int-to-byte v6, v6

    const/16 v16, 0x1

    move-object/from16 v20, v7

    aget-byte v7, v0, v16

    and-int/lit16 v7, v7, 0xff

    move-object/from16 v21, v8

    const/16 v8, 0x18

    invoke-direct {v1, v0, v8}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v22

    const/16 v8, 0x20

    invoke-direct {v1, v0, v8}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v24

    const/16 v8, 0x28

    invoke-direct {v1, v0, v8}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v26

    move-wide/from16 v28, v26

    move-wide/from16 v30, v11

    move-wide/from16 v10, v28

    invoke-static {v15, v6, v7, v10, v11}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long v26, v4, v13

    sub-long v28, v10, v24

    move/from16 v32, v6

    move/from16 v33, v7

    sub-long v6, v26, v28

    sub-long v26, v24, v22

    sub-long v28, v10, v18

    add-long v26, v26, v28

    const-wide/16 v28, 0x2

    div-long v26, v26, v28

    move-wide/from16 v34, v26

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v36, v10

    move-wide/from16 v10, v34

    invoke-static {v8, v6, v7, v10, v11}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    const-string v8, "SntpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v0

    const-string/jumbo v0, "round trip: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms, clock offset: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v39, v13

    add-long v12, v18, v10

    iput-wide v12, v1, Landroid/net/SntpClient;->mNtpTime:J

    iput-wide v4, v1, Landroid/net/SntpClient;->mNtpTimeReference:J

    iput-wide v6, v1, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    nop

    return v16

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SntpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request time failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v4, 0x0

    return v4

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
