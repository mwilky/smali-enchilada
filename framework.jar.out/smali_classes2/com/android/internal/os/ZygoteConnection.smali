.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final abiList:Ljava/lang/String;

.field private isEof:Z

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I

    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "Peer is permitted to specify anexplicit invoke-with wrapper command only for debuggableapplications."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-lt v3, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "System UID may not launch process with UID < 1000"

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    :cond_4
    return-void
.end method

.method private handleAbiListQuery()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleApiBlacklistExemptions([Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/os/ZygoteInit;->setApiBlacklistExemptions([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p2, v0

    sget v2, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDERR_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "Error reopening stdio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_3
    iget v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/os/ZygoteInit;->childZygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WrapperInit.execApplication unexpectedly returned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleHiddenApiAccessLogSampleRate(I)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiAccessLogSampleRate(I)V

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-lez v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    :cond_0
    const/4 v0, 0x0

    if-eqz v3, :cond_1

    array-length v5, v3

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    if-eqz v4, :cond_a

    if-lez v2, :cond_a

    const/4 v6, -0x1

    move v7, v6

    const/4 v8, 0x4

    const/4 v9, 0x1

    :try_start_0
    new-array v10, v9, [Landroid/system/StructPollfd;

    new-instance v11, Landroid/system/StructPollfd;

    invoke-direct {v11}, Landroid/system/StructPollfd;-><init>()V

    aput-object v11, v10, v0

    const/4 v11, 0x4

    new-array v11, v11, [B

    const/16 v12, 0x7530

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    :goto_1
    array-length v6, v11

    if-ge v13, v6, :cond_5

    if-lez v12, :cond_5

    aget-object v6, v10, v0

    iput-object v4, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v6, v10, v0

    sget v9, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v9, v9

    iput-short v9, v6, Landroid/system/StructPollfd;->events:S

    aget-object v6, v10, v0

    iput-short v0, v6, Landroid/system/StructPollfd;->revents:S

    aget-object v6, v10, v0

    const/4 v9, 0x0

    iput-object v9, v6, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    invoke-static {v10, v12}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    sub-long v19, v17, v14

    const-wide/32 v21, 0xf4240

    div-long v0, v19, v21

    long-to-int v0, v0

    rsub-int v12, v0, 0x7530

    if-lez v6, :cond_3

    const/4 v1, 0x0

    aget-object v9, v10, v1

    iget-short v9, v9, Landroid/system/StructPollfd;->revents:S

    sget v19, Landroid/system/OsConstants;->POLLIN:I

    and-int v9, v9, v19

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    invoke-static {v4, v11, v13, v9}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v16

    if-ltz v16, :cond_2

    add-int v13, v13, v16

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v9, "Some error"

    invoke-direct {v1, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_4

    const-string v1, "Zygote"

    const-string v9, "Timed out waiting for child."

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    nop

    const/4 v0, 0x0

    move-object/from16 v1, p0

    const/4 v6, -0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    array-length v0, v11

    if-ne v13, v0, :cond_6

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    move v7, v1

    :cond_6
    const/4 v0, -0x1

    if-ne v7, v0, :cond_7

    const-string v0, "Zygote"

    const-string v1, "Error reading pid from wrapped process, child may have died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Zygote"

    const-string v6, "Error reading pid from wrapped process, child may have died"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-lez v7, :cond_a

    move v0, v7

    :goto_4
    if-lez v0, :cond_8

    if-eq v0, v2, :cond_8

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    goto :goto_4

    :cond_8
    if-lez v0, :cond_9

    const-string v1, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrapped process has pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const-string v1, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " innerPid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v1, v2

    :goto_5
    move-object/from16 v2, p0

    :try_start_1
    iget-object v0, v2, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v2, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    return-void

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Error writing to command socket"

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private handlePreload()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    nop

    nop

    const/16 v1, 0x400

    if-gt v0, v1, :cond_3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "truncated request"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    return-object v1

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "max arg count exceeded"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "invalid Zygote wire format: non-int at argc"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid wire format"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setChildPgid(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/system/Os;->getpgid(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getSocketOutputStream()Ljava/io/DataOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Zyogte does not support package preloading"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isClosedByPeer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return v0
.end method

.method protected isPreloadComplete()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result v0

    return v0
.end method

.method protected preload()V
    .locals 0

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    return-void
.end method

.method processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 28

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    const/4 v5, 0x1

    if-nez v3, :cond_0

    iput-boolean v5, v1, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return-object v0

    :cond_0
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v9, v3}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V

    move-object v2, v9

    iget-boolean v9, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v9, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()V

    return-object v0

    :cond_1
    iget-boolean v9, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    if-eqz v9, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()V

    return-object v0

    :cond_2
    iget-object v9, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v5, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibFileName:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v9, v10, v11}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    iget-object v9, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->apiBlacklistExemptions:[Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v5, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->apiBlacklistExemptions:[Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/internal/os/ZygoteConnection;->handleApiBlacklistExemptions([Ljava/lang/String;)V

    return-object v0

    :cond_4
    iget v9, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->hiddenApiAccessLogSampleRate:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    iget v5, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->hiddenApiAccessLogSampleRate:I

    invoke-direct {v1, v5}, Lcom/android/internal/os/ZygoteConnection;->handleHiddenApiAccessLogSampleRate(I)V

    return-object v0

    :cond_5
    iget-wide v9, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_b

    iget-wide v9, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_b

    iget-object v9, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v2, v9}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    iget-object v9, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v2, v9}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    invoke-static {v2}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    invoke-static {v2}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [[I

    :cond_6
    const/4 v10, 0x0

    iget-object v11, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v11, :cond_7

    :try_start_1
    sget v11, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v11}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v11

    aget-object v14, v11, v5

    move-object v7, v14

    aget-object v14, v11, v13

    move-object v8, v14

    sget v14, Landroid/system/OsConstants;->F_SETFD:I

    invoke-static {v7, v14, v13}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    new-array v14, v12, [I

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v15

    aput v15, v14, v13

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v15

    aput v15, v14, v5
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v14

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v11, "Unable to set up pipe for invoke-with"

    invoke-direct {v5, v11, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_7
    :goto_0
    move-object v15, v8

    move-object v8, v7

    move-object v7, v10

    new-array v10, v12, [I

    fill-array-data v10, :array_0

    move-object/from16 v23, v10

    iget-object v10, v1, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v11

    aput v11, v23, v13

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v11

    aput v11, v23, v5

    :cond_9
    const/4 v5, 0x0

    iget v10, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v11, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v12, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v13, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I

    iget v14, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    iget-object v0, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v24, v3

    iget-object v3, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-boolean v5, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->startChildZygote:Z

    move/from16 v26, v6

    iget-object v6, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    iget-object v1, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    move/from16 v16, v14

    move-object v14, v9

    move-object/from16 v27, v9

    move-object v9, v15

    move/from16 v15, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v23

    move-object/from16 v19, v7

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v1

    invoke-static/range {v10 .. v22}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v15, 0x0

    :try_start_3
    iget-boolean v0, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->startChildZygote:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v3, p0

    :try_start_4
    invoke-direct {v3, v2, v4, v8, v0}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    :goto_1
    move-object v9, v15

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_2

    :cond_a
    move-object/from16 v3, p0

    :try_start_5
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v8, 0x0

    invoke-direct {v3, v1, v4, v9}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    nop

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_3
    move-exception v0

    :goto_2
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v0

    :cond_b
    move-object/from16 v24, v3

    move/from16 v26, v6

    move-object v3, v1

    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", effective=0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v3, v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "IOException on command socket"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
