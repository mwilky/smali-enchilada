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

    .line 22
    const-string v0, "OPCredentialTracer"

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->TAG:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "setC.txt"

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->SET_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    .line 24
    const-string v0, "getC.txt"

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->GET_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "verifyC.txt"

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->VERIFY_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 28
    const/4 v0, 0x4

    sput v0, Lcom/android/server/locksettings/OPCredentialTracer;->LOG_MAX_LINES:I

    .line 29
    const/4 v0, 0x7

    sput v0, Lcom/android/server/locksettings/OPCredentialTracer;->CREDENTIAL_TRACE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B

    .line 217
    array-length v0, p0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 222
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 223
    .local v3, "value":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "hv":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .end local v3    # "value":I
    .end local v4    # "hv":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ensureFileExsit(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "fileOut":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private static genGetCredentialFilePathForUser(I)Ljava/lang/String;
    .locals 1
    .param p0, "userId"    # I

    .line 238
    sget-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->GET_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static genHashInfo([BIZ)Ljava/lang/String;
    .locals 7
    .param p0, "hash"    # [B
    .param p1, "securityType"    # I
    .param p2, "result"    # Z

    .line 195
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v0, "info":Ljava/lang/StringBuffer;
    sget v1, Lcom/android/server/locksettings/OPCredentialTracer;->CREDENTIAL_TRACE_COUNT:I

    new-array v1, v1, [B

    .line 198
    .local v1, "trace":[B
    sget v2, Lcom/android/server/locksettings/OPCredentialTracer;->CREDENTIAL_TRACE_COUNT:I

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    invoke-static {v1}, Lcom/android/server/locksettings/OPCredentialTracer;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "hashvalue":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 202
    .local v3, "saveTime":J
    sget-object v5, Lcom/android/server/locksettings/OPCredentialTracer;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "saveDate":Ljava/lang/String;
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

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 207
    .end local v0    # "info":Ljava/lang/StringBuffer;
    .end local v1    # "trace":[B
    .end local v2    # "hashvalue":Ljava/lang/String;
    .end local v3    # "saveTime":J
    .end local v5    # "saveDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static genSetCredentialFilePathForUser(I)Ljava/lang/String;
    .locals 1
    .param p0, "userId"    # I

    .line 234
    sget-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->SET_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static genVerifyCredentialFilePathForUser(I)Ljava/lang/String;
    .locals 1
    .param p0, "userId"    # I

    .line 242
    sget-object v0, Lcom/android/server/locksettings/OPCredentialTracer;->VERIFY_CREDENTIAL_LOG_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "basename"    # Ljava/lang/String;

    .line 246
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

    .line 248
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 252
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
    .param p0, "hash"    # [B
    .param p1, "securityType"    # I
    .param p2, "userId"    # I

    .line 37
    invoke-static {p2}, Lcom/android/server/locksettings/OPCredentialTracer;->genGetCredentialFilePathForUser(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->writeHashInfo([BIZLjava/lang/String;)V

    .line 38
    return-void
.end method

.method public static updateSetCredentialInfo([BII)V
    .locals 2
    .param p0, "hash"    # [B
    .param p1, "securityType"    # I
    .param p2, "userId"    # I

    .line 33
    invoke-static {p2}, Lcom/android/server/locksettings/OPCredentialTracer;->genSetCredentialFilePathForUser(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->writeHashInfo([BIZLjava/lang/String;)V

    .line 34
    return-void
.end method

.method public static updateVerifyCredentialInfo([BIZI)V
    .locals 1
    .param p0, "hash"    # [B
    .param p1, "securityType"    # I
    .param p2, "result"    # Z
    .param p3, "userId"    # I

    .line 41
    invoke-static {p3}, Lcom/android/server/locksettings/OPCredentialTracer;->genVerifyCredentialFilePathForUser(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/locksettings/OPCredentialTracer;->writeHashInfo([BIZLjava/lang/String;)V

    .line 42
    return-void
.end method

.method public static writeHashInfo([BIZLjava/lang/String;)V
    .locals 11
    .param p0, "hash"    # [B
    .param p1, "securityType"    # I
    .param p2, "result"    # Z
    .param p3, "path"    # Ljava/lang/String;

    .line 51
    invoke-static {p3}, Lcom/android/server/locksettings/OPCredentialTracer;->ensureFileExsit(Ljava/lang/String;)V

    .line 53
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/OPCredentialTracer;->genHashInfo([BIZ)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "hashData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    new-instance v1, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "hashInfo":Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .local v2, "file":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v3, "inputBuffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v4, "inputs":Ljava/util/ArrayList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v5, "successDatas":Ljava/util/ArrayList;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v6, "failDatas":Ljava/util/ArrayList;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 69
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    new-instance v7, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;

    invoke-direct {v7, v8}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;-><init>(Ljava/lang/String;)V

    .line 71
    .local v7, "info":Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;
    invoke-virtual {v7}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->getResult()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 72
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v7    # "info":Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;
    :goto_1
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 80
    sget-object v7, Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;->sInstance:Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 82
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 83
    sget-object v7, Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;->sInstance:Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 86
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->getResult()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    .line 87
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget v10, Lcom/android/server/locksettings/OPCredentialTracer;->LOG_MAX_LINES:I

    if-lt v7, v10, :cond_6

    .line 88
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    :cond_6
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget v10, Lcom/android/server/locksettings/OPCredentialTracer;->LOG_MAX_LINES:I

    if-lt v7, v10, :cond_8

    .line 93
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 95
    :cond_8
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    nop

    .local v9, "i":I
    :goto_3
    move v7, v9

    .end local v9    # "i":I
    .local v7, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_9

    .line 102
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const/16 v9, 0xa

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    goto :goto_3

    .line 105
    .end local v9    # "i":I
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "inputStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 108
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 116
    .local v9, "fileOut":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 117
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "hashData":Ljava/lang/String;
    .end local v1    # "hashInfo":Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;
    .end local v2    # "file":Ljava/io/BufferedReader;
    .end local v3    # "inputBuffer":Ljava/lang/StringBuffer;
    .end local v4    # "inputs":Ljava/util/ArrayList;
    .end local v5    # "successDatas":Ljava/util/ArrayList;
    .end local v6    # "failDatas":Ljava/util/ArrayList;
    .end local v7    # "inputStr":Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
