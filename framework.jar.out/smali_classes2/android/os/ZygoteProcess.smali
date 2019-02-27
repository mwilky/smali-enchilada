.class public Landroid/os/ZygoteProcess;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ZygoteProcess$ZygoteState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZygoteProcess"

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4


# instance fields
.field private mApiBlacklistExemptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenApiAccessLogSampleRate:I

.field private final mLock:Ljava/lang/Object;

.field private final mSecondarySocket:Landroid/net/LocalSocketAddress;

.field private final mSocket:Landroid/net/LocalSocketAddress;

.field private primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

.field private secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mApiBlacklistExemptions:Ljava/util/List;

    iput-object p1, p0, Landroid/os/ZygoteProcess;->mSocket:Landroid/net/LocalSocketAddress;

    iput-object p2, p0, Landroid/os/ZygoteProcess;->mSecondarySocket:Landroid/net/LocalSocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, p2, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;-><init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/os/ZygoteProcess;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    const-string v0, "--query-abi-list"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private maybeSetApiBlacklistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget-object v2, p0, Landroid/os/ZygoteProcess;->mApiBlacklistExemptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    iget-object v2, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    iget-object v3, p0, Landroid/os/ZygoteProcess;->mApiBlacklistExemptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string v3, "--set-api-blacklist-exemptions"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroid/os/ZygoteProcess;->mApiBlacklistExemptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    iget-object v4, p0, Landroid/os/ZygoteProcess;->mApiBlacklistExemptions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    iget-object v2, p1, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "ZygoteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set API blacklist exemptions; status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v1

    :catch_0
    move-exception v1

    const-string v2, "ZygoteProcess"

    const-string v3, "Failed to set API blacklist exemptions"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/os/ZygoteProcess;->mApiBlacklistExemptions:Ljava/util/List;

    return v0

    :cond_4
    :goto_1
    const-string v1, "ZygoteProcess"

    const-string v2, "Can\'t set API blacklist exemptions: no zygote connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--hidden-api-log-sampling-rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "ZygoteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set hidden API log sampling rate; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZygoteProcess"

    const-string v2, "Failed to set hidden API log sampling rate"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ZygoteProcess lock not held"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mSocket:Landroid/net/LocalSocketAddress;

    invoke-static {v0}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiBlacklistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    :cond_1
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mSecondarySocket:Landroid/net/LocalSocketAddress;

    invoke-static {v0}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiBlacklistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    :cond_4
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v0

    :cond_5
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported zygote ABI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Error connecting to secondary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Error connecting to primary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    const-string v0, "--runtime-args"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setuid="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--setgid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--runtime-flags="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-ne v4, v0, :cond_0

    const-string v0, "--mount-external-default"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v4, v0, :cond_1

    const-string v0, "--mount-external-read"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v4, v0, :cond_2

    const-string v0, "--mount-external-write"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--target-sdk-version="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_5

    array-length v15, v3

    if-lez v15, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--setgroups="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v3

    const/16 v16, 0x0

    :goto_1
    move/from16 v17, v16

    move/from16 v4, v17

    if-ge v4, v0, :cond_4

    if-eqz v4, :cond_3

    move/from16 v18, v0

    const/16 v0, 0x2c

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move/from16 v18, v0

    :goto_2
    aget v0, v3, v4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v16, v4, 0x1

    move/from16 v0, v18

    move/from16 v4, p7

    goto :goto_1

    :cond_4
    move/from16 v18, v0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--nice-name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v5, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--seinfo="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v6, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--instruction-set="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v7, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--app-data-dir="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v8, :cond_a

    const-string v0, "--invoke-with"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p14, :cond_b

    const-string v0, "--start-child-zygote"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v15, p1

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_c

    array-length v0, v9

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_c

    move/from16 v19, v0

    aget-object v0, v9, v2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v19

    goto :goto_3

    :cond_c
    iget-object v2, v1, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    move-object/from16 v3, p10

    :try_start_0
    invoke-direct {v1, v3}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/os/ZygoteProcess;->zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V
    .locals 5

    const/16 v0, 0x14

    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ZygoteProcess$ZygoteState;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "ZygoteProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "ZygoteProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect to Zygote through socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static waitForConnectionToZygote(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    return-void
.end method

.method private static zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ZygoteProcess$ZygoteState;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v3, "embedded newlines not allowed"

    invoke-direct {v1, v3}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, p0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    iget-object v3, p0, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    nop

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    new-instance v1, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v1}, Landroid/os/Process$ProcessStartResult;-><init>()V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v1, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    iput-boolean v4, v1, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    iget v4, v1, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ltz v4, :cond_3

    return-object v1

    :cond_3
    new-instance v4, Landroid/os/ZygoteStartFailedEx;

    const-string v5, "fork() failed"

    invoke-direct {v4, v5}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v1, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    :cond_1
    return-void
.end method

.method public establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    monitor-exit v0

    nop

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPrimarySocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/os/ZygoteProcess;->mSocket:Landroid/net/LocalSocketAddress;

    return-object v0
.end method

.method public preloadDefault(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string v3, "--preload-default"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preloadPackageForAbi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p5}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string v3, "--preload-package"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setApiBlacklistExemptions(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/os/ZygoteProcess;->mApiBlacklistExemptions:Ljava/util/List;

    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/os/ZygoteProcess;->maybeSetApiBlacklistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v3, v2}, Landroid/os/ZygoteProcess;->maybeSetApiBlacklistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    move-result v2

    move v1, v2

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHiddenApiAccessLogSampleRate(I)V
    .locals 2

    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 17

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p14

    :try_start_0
    invoke-direct/range {v1 .. v16}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v1, "ZygoteProcess"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Starting VM process through Zygote failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ChildZygoteProcess;
    .locals 18

    new-instance v0, Landroid/net/LocalSocketAddress;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--zygote-socket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    move-object/from16 v17, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object v15, v0

    :try_start_0
    invoke-direct/range {v2 .. v17}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v2, Landroid/os/ChildZygoteProcess;

    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-direct {v2, v1, v3}, Landroid/os/ChildZygoteProcess;-><init>(Landroid/net/LocalSocketAddress;I)V

    return-object v2

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Starting child-zygote through Zygote failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
