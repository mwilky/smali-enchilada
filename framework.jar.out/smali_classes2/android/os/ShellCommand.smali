.class public abstract Landroid/os/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private mArgPos:I

.field private mArgs:[Ljava/lang/String;

.field private mCmd:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mErr:Ljava/io/FileDescriptor;

.field private mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field private mFileErr:Ljava/io/FileOutputStream;

.field private mFileIn:Ljava/io/FileInputStream;

.field private mFileOut:Ljava/io/FileOutputStream;

.field private mIn:Ljava/io/FileDescriptor;

.field private mInputStream:Ljava/io/InputStream;

.field private mOut:Ljava/io/FileDescriptor;

.field private mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field private mResultReceiver:Landroid/os/ResultReceiver;

.field private mShellCallback:Landroid/os/ShellCallback;

.field private mTarget:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adoptResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    iget-object v0, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    .locals 12

    move-object v9, p0

    move-object/from16 v10, p5

    const/4 v0, 0x0

    if-eqz v10, :cond_0

    array-length v1, v10

    if-lez v1, :cond_0

    aget-object v0, v10, v0

    const/4 v1, 0x1

    move-object v11, v0

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v8, v0

    move-object v11, v1

    :goto_0
    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;I)V

    iput-object v11, v9, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    move-object/from16 v1, p7

    iput-object v1, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v0, -0x1

    move v2, v0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v9, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/os/ShellCommand;->onCommand(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v0, :cond_1

    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    :cond_1
    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v0, :cond_2

    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    :cond_2
    iget-object v0, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_7

    :goto_1
    iget-object v0, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v9}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    const-string v5, "Exception occurred while executing:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v0, :cond_3

    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    :cond_3
    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v0, :cond_4

    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    :cond_4
    iget-object v0, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_7

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v9}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0, v4}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v0, :cond_5

    iget-object v0, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    :cond_5
    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v0, :cond_6

    iget-object v0, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    :cond_6
    iget-object v0, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    return v2

    :goto_3
    nop

    iget-object v4, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v4, :cond_8

    iget-object v4, v9, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v4}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    :cond_8
    iget-object v4, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v4, :cond_9

    iget-object v4, v9, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v4}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    :cond_9
    iget-object v4, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v4, :cond_a

    iget-object v4, v9, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v4, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_a
    throw v0
.end method

.method public getBufferedInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getErrFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getErrPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    iget-object v0, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawErrorStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    :cond_1
    iget-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    return-object v0
.end method

.method public getInFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getNextArg()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Landroid/os/ShellCommand;->mArgPos:I

    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v1, p0, Landroid/os/ShellCommand;->mArgPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getNextArgRequired()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNextOption()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget v0, p0, Landroid/os/ShellCommand;->mArgPos:I

    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    aget-object v0, v0, v2

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iput-object v3, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_4
    iput-object v3, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_5
    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOutFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    iget-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    return-object v0
.end method

.method public getRawErrorStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public getShellCallback()Landroid/os/ShellCallback;
    .locals 1

    iget-object v0, p0, Landroid/os/ShellCommand;->mShellCallback:Landroid/os/ShellCallback;

    return-object v0
.end method

.method public handleDefaultCommands(Ljava/lang/String;)I
    .locals 5

    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget-object v3, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/os/ShellCommand;->mTarget:Landroid/os/Binder;

    iget-object v2, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return v4

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->onHelp()V

    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;I)V
    .locals 1

    iput-object p1, p0, Landroid/os/ShellCommand;->mTarget:Landroid/os/Binder;

    iput-object p2, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    iput-object p3, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    iput-object p4, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    iput-object p5, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iput-object p6, p0, Landroid/os/ShellCommand;->mShellCallback:Landroid/os/ShellCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    iput p7, p0, Landroid/os/ShellCommand;->mArgPos:I

    iput-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    iput-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    iput-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    iput-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public abstract onCommand(Ljava/lang/String;)I
.end method

.method public abstract onHelp()V
.end method

.method public openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v0

    const-string/jumbo v1, "u:r:system_server:s0"

    invoke-virtual {v0, p1, v1, p2}, Landroid/os/ShellCallback;->openFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure opening file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unable to open file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Consider using a file under /data/local/tmp/"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public peekNextArg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Landroid/os/ShellCommand;->mArgPos:I

    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v1, p0, Landroid/os/ShellCommand;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
