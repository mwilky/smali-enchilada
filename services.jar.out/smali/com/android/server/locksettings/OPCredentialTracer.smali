.class public Lcom/android/server/locksettings/OPCredentialTracer;
.super Ljava/lang/Object;
.source "OPCredentialTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;,
        Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;
    }
.end annotation


# static fields
.field private static CREDENTIAL_TRACE_COUNT:I = 0x0

.field static GET_CREDENTIAL_LOG_PATH:Ljava/lang/String; = null

.field private static LOG_MAX_LINES:I = 0x0

.field static SET_CREDENTIAL_LOG_PATH:Ljava/lang/String; = null

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field static TAG:Ljava/lang/String;

.field static VERIFY_CREDENTIAL_LOG_PATH:Ljava/lang/String;

.field private static mDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OPCredentialTracer"

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setC.txt"

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->SET_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    const-string v0, "getC.txt"

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->GET_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    const-string/jumbo v0, "verifyC.txt"

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->VERIFY_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->mDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x4

    sput v0, Lcom/android/server/locksettings/OPCredentialTracer;->LOG_MAX_LINES:I

    const/4 v0, 0x7

    sput v0, Lcom/android/server/locksettings/OPCredentialTracer;->CREDENTIAL_TRACE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 7

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ensureFileExsit(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static genGetCredentialFilePathForUser(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->GET_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static genHashInfo([BIZ)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget v1, Lcom/android/server/locksettings/OPCredentialTracer;->CREDENTIAL_TRACE_COUNT:I

    new-array v1, v1, [B

    sget v2, Lcom/android/server/locksettings/OPCredentialTracer;->CREDENTIAL_TRACE_COUNT:I

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v1}, Lcom/android/server/locksettings/OPCredentialTracer;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/android/server/locksettings/OPCredentialTracer;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static genSetCredentialFilePathForUser(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->SET_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static genVerifyCredentialFilePathForUser(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->VERIFY_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static updateGetCredentialInfo([BII)V
    .locals 2

    invoke-static {p2}, Lcom/android/server/locksettings/OPCredentialTracer;->genGetCredentialFilePathForUser(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->writeHashInfo([BIZLjava/lang/String;)V

    return-void
.end method

.method public static updateSetCredentialInfo([BII)V
    .locals 2

    invoke-static {p2}, Lcom/android/server/locksettings/OPCredentialTracer;->genSetCredentialFilePathForUser(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->writeHashInfo([BIZLjava/lang/String;)V

    return-void
.end method

.method public static updateVerifyCredentialInfo([BIZI)V
    .locals 1

    invoke-static {p3}, Lcom/android/server/locksettings/OPCredentialTracer;->genVerifyCredentialFilePathForUser(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->writeHashInfo([BIZLjava/lang/String;)V

    return-void
.end method

.method public static writeHashInfo([BIZLjava/lang/String;)V
    .locals 11

    invoke-static {p3}, Lcom/android/server/locksettings/OPCredentialTracer;->ensureFileExsit(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/OPCredentialTracer;->genHashInfo([BIZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    if-eqz v7, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;

    invoke-direct {v7, v8}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->getResult()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;->sInstance:Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;->sInstance:Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->getResult()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget v10, Lcom/android/server/locksettings/OPCredentialTracer;->LOG_MAX_LINES:I

    if-lt v7, v10, :cond_6

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget v10, Lcom/android/server/locksettings/OPCredentialTracer;->LOG_MAX_LINES:I

    if-lt v7, v10, :cond_8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    nop

    :goto_3
    move v7, v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_9

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v9, 0xa

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v7, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
