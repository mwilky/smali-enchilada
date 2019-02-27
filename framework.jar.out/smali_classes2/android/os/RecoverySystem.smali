.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static final ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field public static final BLOCK_MAP_FILE:Ljava/io/File;

.field private static final BOOT_LOG_DIR:Ljava/io/File;

.field private static final DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final LAST_INSTALL_FILE:Ljava/io/File;

.field private static final LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final LOG_FILE:Ljava/io/File;

.field private static final LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final PACKAGE_NAME_WIPING_EUICC_DATA_CALLBACK:Ljava/lang/String; = "android"

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field public static final UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 399
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 98
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 100
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "last_install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    .line 102
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/boot_log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->BOOT_LOG_DIR:Ljava/io/File;

    .line 118
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "block.map"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 134
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1216
    return-void
.end method

.method public constructor <init>(Landroid/os/IRecoverySystem;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IRecoverySystem;

    .line 1221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1223
    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .local v0, "command":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 953
    .local v3, "arg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 954
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .end local v3    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 961
    :cond_1
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 962
    .local v1, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 964
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static cancelScheduledUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 700
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    return-void

    .line 701
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBcb()Z
    .locals 1

    .line 1183
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearBcb()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1184
    :catch_0
    move-exception v0

    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 163
    .local v0, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    .line 164
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 166
    :cond_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 168
    .local v1, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 169
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 170
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 172
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 177
    nop

    .line 178
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 176
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 181
    nop

    .line 182
    return-object v0

    .line 180
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v2
.end method

.method public static handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 1085
    const/4 v0, 0x0

    move-object v1, v0

    .line 1087
    .local v1, "log":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const/high16 v3, -0x10000

    const-string v4, "...\n"

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1092
    :goto_0
    goto :goto_1

    .line 1090
    :catch_0
    move-exception v2

    .line 1091
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "RecoverySystem"

    const-string v4, "Error reading recovery log"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1088
    :catch_1
    move-exception v2

    .line 1089
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "RecoverySystem"

    const-string v4, "No recovery log file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 1094
    :goto_1
    if-eqz v1, :cond_0

    .line 1095
    invoke-static {p0}, Landroid/os/RecoverySystem;->parseLastInstallLog(Landroid/content/Context;)V

    .line 1099
    :cond_0
    sget-object v2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 1100
    .local v2, "reservePackage":Z
    const/4 v3, 0x0

    if-nez v2, :cond_2

    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1101
    move-object v4, v0

    .line 1103
    .local v4, "filename":Ljava/lang/String;
    :try_start_1
    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-static {v5, v3, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v0

    .line 1106
    goto :goto_2

    .line 1104
    :catch_2
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "Error reading uncrypt file"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_2

    const-string v0, "/data"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    const-string v0, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1114
    :cond_1
    const-string v0, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    .end local v4    # "filename":Ljava/lang/String;
    :cond_2
    :goto_3
    sget-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "names":[Ljava/lang/String;
    nop

    .local v3, "i":I
    :goto_4
    if-eqz v0, :cond_6

    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1127
    aget-object v4, v0, v3

    const-string v5, "last_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_5

    .line 1128
    :cond_3
    if-eqz v2, :cond_4

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    .line 1129
    :cond_4
    if-eqz v2, :cond_5

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    .line 1131
    :cond_5
    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v0, v3

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1126
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1134
    .end local v3    # "i":I
    :cond_6
    return-object v1
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    .line 528
    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "processed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 549
    sget-object v2, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 550
    :try_start_0
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 552
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 554
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "filename":Ljava/lang/String;
    const-string v3, "/storage/emulated"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    const-string v3, "/storage/emulated"

    const-string v4, "/data/media"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 560
    :cond_0
    move-object v3, v0

    .line 560
    .end local v0    # "filename":Ljava/lang/String;
    .local v3, "filename":Ljava/lang/String;
    :goto_0
    const-string v0, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v0, Landroid/os/StatFs;

    const-string v4, "/cache"

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 564
    .local v4, "statsFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v5, v0

    .line 565
    .local v5, "availableBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7

    .line 566
    .local v7, "mBlockSize":J
    mul-long v9, v5, v7

    .line 568
    .local v9, "CachebytesAvailable":J
    const-wide/32 v11, 0x100000

    div-long v11, v9, v11

    const-wide/16 v13, 0x32

    cmp-long v0, v11, v13

    const/4 v11, 0x0

    if-gez v0, :cond_1

    .line 569
    const-string v0, "RecoverySystem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CachebytesAvailable\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",delete boot_log for ota!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v0, Landroid/os/RecoverySystem;->BOOT_LOG_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "names":[Ljava/lang/String;
    move v12, v11

    .line 571
    .local v12, "i":I
    :goto_1
    if-eqz v0, :cond_1

    array-length v13, v0

    if-ge v12, v13, :cond_1

    .line 572
    new-instance v13, Ljava/io/File;

    sget-object v14, Landroid/os/RecoverySystem;->BOOT_LOG_DIR:Ljava/io/File;

    aget-object v15, v0, v12

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v13}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 571
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 578
    .end local v0    # "names":[Ljava/lang/String;
    .end local v12    # "i":I
    :cond_1
    const-string v0, "_s.zip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    move v12, v0

    .line 583
    .local v12, "securityUpdate":Z
    const-string v0, "/data/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 584
    if-eqz p2, :cond_3

    .line 585
    sget-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 586
    :cond_2
    const-string v0, "RecoverySystem"

    const-string v11, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v0, Ljava/io/IOException;

    const-string v11, "Failed to find block map file"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_3
    new-instance v0, Ljava/io/FileWriter;

    sget-object v14, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v0

    .line 593
    .local v14, "uncryptFile":Ljava/io/FileWriter;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V

    .line 596
    nop

    .line 599
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v11}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 600
    invoke-virtual {v0, v15, v11}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 601
    :cond_4
    const-string v0, "RecoverySystem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error setting permission for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_5
    sget-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 609
    .end local v14    # "uncryptFile":Ljava/io/FileWriter;
    :goto_2
    const-string v0, "@/cache/recovery/block.map"

    move-object v3, v0

    goto :goto_3

    .line 595
    .restart local v14    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_0
    move-exception v0

    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V

    throw v0

    .line 612
    .end local v14    # "uncryptFile":Ljava/io/FileWriter;
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--update_package="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "filenameArg":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--locale="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 614
    .local v11, "localeArg":Ljava/lang/String;
    const-string v14, "--security\n"

    .line 616
    .local v14, "securityArg":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 617
    .local v15, "command":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 618
    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 618
    .end local v0    # "filenameArg":Ljava/lang/String;
    .local v16, "filenameArg":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    const-string v3, "--security\n"

    .line 618
    .end local v3    # "filename":Ljava/lang/String;
    .local v17, "filename":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_4

    .line 621
    .end local v16    # "filenameArg":Ljava/lang/String;
    .end local v17    # "filename":Ljava/lang/String;
    .restart local v0    # "filenameArg":Ljava/lang/String;
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 621
    .end local v0    # "filenameArg":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .restart local v16    # "filenameArg":Ljava/lang/String;
    .restart local v17    # "filename":Ljava/lang/String;
    :goto_4
    const-string/jumbo v0, "recovery"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 623
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0, v15}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 628
    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 629
    .local v3, "pm":Landroid/os/PowerManager;
    const-string/jumbo v18, "recovery-update"

    move-object/from16 v19, v18

    .line 632
    .local v19, "reason":Ljava/lang/String;
    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 632
    .end local v0    # "rs":Landroid/os/RecoverySystem;
    .local v20, "rs":Landroid/os/RecoverySystem;
    move-object/from16 v21, v4

    const-string v4, "android.software.leanback"

    .line 632
    .end local v4    # "statsFs":Landroid/os/StatFs;
    .local v21, "statsFs":Landroid/os/StatFs;
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 633
    const-string/jumbo v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 634
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    move-object/from16 v22, v0

    const/4 v0, 0x2

    .line 634
    .end local v0    # "wm":Landroid/view/WindowManager;
    .local v22, "wm":Landroid/view/WindowManager;
    if-eq v4, v0, :cond_8

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .end local v19    # "reason":Ljava/lang/String;
    .local v4, "reason":Ljava/lang/String;
    const-string v1, ",quiescent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 638
    .end local v4    # "reason":Ljava/lang/String;
    .end local v22    # "wm":Landroid/view/WindowManager;
    .restart local v19    # "reason":Ljava/lang/String;
    move-object/from16 v4, v19

    goto :goto_5

    :cond_8
    move-object/from16 v4, v19

    .line 638
    .end local v19    # "reason":Ljava/lang/String;
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_5
    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reboot failed (no permissions?)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v20    # "rs":Landroid/os/RecoverySystem;
    .end local v21    # "statsFs":Landroid/os/StatFs;
    .local v0, "rs":Landroid/os/RecoverySystem;
    .local v4, "statsFs":Landroid/os/StatFs;
    :cond_9
    move-object/from16 v20, v0

    move-object/from16 v21, v4

    .line 624
    .end local v0    # "rs":Landroid/os/RecoverySystem;
    .end local v4    # "statsFs":Landroid/os/StatFs;
    .restart local v20    # "rs":Landroid/os/RecoverySystem;
    .restart local v21    # "statsFs":Landroid/os/StatFs;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Setup BCB failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    .end local v5    # "availableBlocks":J
    .end local v7    # "mBlockSize":J
    .end local v9    # "CachebytesAvailable":J
    .end local v11    # "localeArg":Ljava/lang/String;
    .end local v12    # "securityUpdate":Z
    .end local v14    # "securityArg":Ljava/lang/String;
    .end local v15    # "command":Ljava/lang/String;
    .end local v16    # "filenameArg":Ljava/lang/String;
    .end local v17    # "filename":Ljava/lang/String;
    .end local v20    # "rs":Landroid/os/RecoverySystem;
    .end local v21    # "statsFs":Landroid/os/StatFs;
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static parseLastInstallLog(Landroid/content/Context;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;

    .line 971
    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    sget-object v3, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v2, v0

    .line 972
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 973
    .local v0, "line":Ljava/lang/String;
    const/4 v4, -0x1

    .line 973
    .local v4, "bytesWrittenInMiB":I
    const/4 v5, -0x1

    .line 974
    .local v5, "bytesStashedInMiB":I
    const/4 v6, -0x1

    .line 975
    .local v6, "timeTotal":I
    const/4 v7, -0x1

    .line 976
    .local v7, "uncryptTime":I
    const/4 v8, -0x1

    .line 977
    .local v8, "sourceVersion":I
    const/4 v9, -0x1

    .line 978
    .local v9, "temperatureStart":I
    const/4 v10, -0x1

    .line 979
    .local v10, "temperatureEnd":I
    const/4 v11, -0x1

    .line 980
    .local v11, "temperatureMax":I
    const/4 v12, -0x1

    .line 981
    .local v12, "errorCode":I
    const/4 v13, -0x1

    move v14, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v5

    move v5, v4

    move-object v4, v0

    move v0, v13

    .line 981
    .local v0, "causeCode":I
    .local v4, "line":Ljava/lang/String;
    .local v5, "bytesWrittenInMiB":I
    .local v8, "bytesStashedInMiB":I
    .local v9, "sourceVersion":I
    .local v10, "temperatureStart":I
    .local v11, "temperatureEnd":I
    .local v12, "temperatureMax":I
    .local v14, "errorCode":I
    :goto_0
    move v15, v0

    .line 983
    .end local v0    # "causeCode":I
    .local v15, "causeCode":I
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v0

    if-eqz v0, :cond_f

    .line 989
    const/16 v0, 0x3a

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move/from16 v16, v0

    .line 990
    .local v16, "numIndex":I
    move/from16 v3, v16

    if-eq v3, v13, :cond_e

    .line 990
    .end local v16    # "numIndex":I
    .local v3, "numIndex":I
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v0, v13, :cond_0

    .line 991
    nop

    .line 981
    move-object/from16 v21, v2

    move/from16 v23, v14

    goto/16 :goto_8

    .line 993
    :cond_0
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v0

    .line 996
    .local v13, "numString":Ljava/lang/String;
    :try_start_3
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v19, v17

    .line 1000
    .local v19, "parsedNum":J
    nop

    .line 999
    nop

    .line 1002
    const/high16 v0, 0x100000

    move/from16 v16, v0

    .line 1005
    .local v16, "MiB":I
    :try_start_4
    const-string v0, "bytes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    .line 1006
    const-wide/32 v17, 0x100000

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v13

    move/from16 v23, v14

    move-wide/from16 v2, v19

    :try_start_5
    div-long v13, v2, v17

    .line 1006
    .end local v3    # "numIndex":I
    .end local v13    # "numString":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .end local v19    # "parsedNum":J
    .local v2, "parsedNum":J
    .local v21, "in":Ljava/io/BufferedReader;
    .local v22, "numIndex":I
    .local v23, "errorCode":I
    .local v24, "numString":Ljava/lang/String;
    invoke-static {v13, v14}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 1006
    .local v0, "scaled":I
    goto :goto_1

    .line 1010
    .end local v0    # "scaled":I
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 1008
    .end local v21    # "in":Ljava/io/BufferedReader;
    .end local v22    # "numIndex":I
    .end local v23    # "errorCode":I
    .end local v24    # "numString":Ljava/lang/String;
    .local v2, "in":Ljava/io/BufferedReader;
    .restart local v3    # "numIndex":I
    .restart local v13    # "numString":Ljava/lang/String;
    .restart local v14    # "errorCode":I
    .restart local v19    # "parsedNum":J
    :cond_1
    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v13

    move/from16 v23, v14

    move-wide/from16 v2, v19

    .line 1008
    .end local v3    # "numIndex":I
    .end local v13    # "numString":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .end local v19    # "parsedNum":J
    .local v2, "parsedNum":J
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "numIndex":I
    .restart local v23    # "errorCode":I
    .restart local v24    # "numString":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1013
    .restart local v0    # "scaled":I
    :goto_1
    nop

    .line 1012
    nop

    .line 1015
    :try_start_6
    const-string/jumbo v13, "time"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1016
    move v6, v0

    .line 1038
    .end local v2    # "parsedNum":J
    .end local v15    # "causeCode":I
    .end local v16    # "MiB":I
    .end local v22    # "numIndex":I
    .end local v23    # "errorCode":I
    .end local v24    # "numString":Ljava/lang/String;
    .local v0, "causeCode":I
    .restart local v14    # "errorCode":I
    :cond_2
    :goto_2
    move v0, v15

    :goto_3
    move/from16 v14, v23

    goto/16 :goto_6

    .line 1017
    .end local v14    # "errorCode":I
    .local v0, "scaled":I
    .restart local v2    # "parsedNum":J
    .restart local v15    # "causeCode":I
    .restart local v16    # "MiB":I
    .restart local v22    # "numIndex":I
    .restart local v23    # "errorCode":I
    .restart local v24    # "numString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "uncrypt_time"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1018
    move v7, v0

    goto :goto_2

    .line 1019
    :cond_4
    const-string/jumbo v13, "source_build"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1020
    move v9, v0

    goto :goto_2

    .line 1021
    :cond_5
    const-string v13, "bytes_written"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1022
    const/4 v13, -0x1

    if-ne v5, v13, :cond_6

    .line 1023
    move v13, v0

    goto :goto_4

    :cond_6
    add-int v13, v5, v0

    :goto_4
    move v5, v13

    goto :goto_2

    .line 1024
    :cond_7
    const-string v13, "bytes_stashed"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1025
    const/4 v13, -0x1

    if-ne v8, v13, :cond_8

    .line 1026
    move v13, v0

    goto :goto_5

    :cond_8
    add-int v13, v8, v0

    :goto_5
    move v8, v13

    goto :goto_2

    .line 1027
    :cond_9
    const-string/jumbo v13, "temperature_start"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1028
    move v10, v0

    goto :goto_2

    .line 1029
    :cond_a
    const-string/jumbo v13, "temperature_end"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1030
    move v11, v0

    goto :goto_2

    .line 1031
    :cond_b
    const-string/jumbo v13, "temperature_max"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1032
    move v12, v0

    goto :goto_2

    .line 1033
    :cond_c
    const-string v13, "error"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1034
    move v13, v0

    .line 1038
    .end local v23    # "errorCode":I
    .local v13, "errorCode":I
    move v14, v13

    move v0, v15

    goto :goto_6

    .line 1035
    .end local v13    # "errorCode":I
    .restart local v23    # "errorCode":I
    :cond_d
    const-string v13, "cause"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1036
    nop

    .line 1036
    .end local v2    # "parsedNum":J
    .end local v15    # "causeCode":I
    .end local v16    # "MiB":I
    .end local v22    # "numIndex":I
    .end local v24    # "numString":Ljava/lang/String;
    .local v0, "causeCode":I
    goto :goto_3

    .line 1038
    .end local v23    # "errorCode":I
    .restart local v14    # "errorCode":I
    :goto_6
    nop

    .line 981
    move-object/from16 v2, v21

    goto :goto_9

    .line 1010
    .end local v0    # "causeCode":I
    .end local v21    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    .restart local v3    # "numIndex":I
    .local v13, "numString":Ljava/lang/String;
    .restart local v15    # "causeCode":I
    .restart local v16    # "MiB":I
    .restart local v19    # "parsedNum":J
    :catch_1
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v13

    move/from16 v23, v14

    move-wide/from16 v2, v19

    .line 1011
    .end local v3    # "numIndex":I
    .end local v13    # "numString":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .end local v19    # "parsedNum":J
    .local v0, "ignored":Ljava/lang/ArithmeticException;
    .local v2, "parsedNum":J
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "numIndex":I
    .restart local v23    # "errorCode":I
    .restart local v24    # "numString":Ljava/lang/String;
    :goto_7
    const-string v13, "RecoverySystem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v0

    const-string v0, "Number overflows in "

    .line 1011
    .end local v0    # "ignored":Ljava/lang/ArithmeticException;
    .local v25, "ignored":Ljava/lang/ArithmeticException;
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    goto :goto_8

    .line 997
    .end local v16    # "MiB":I
    .end local v21    # "in":Ljava/io/BufferedReader;
    .end local v22    # "numIndex":I
    .end local v23    # "errorCode":I
    .end local v24    # "numString":Ljava/lang/String;
    .end local v25    # "ignored":Ljava/lang/ArithmeticException;
    .local v2, "in":Ljava/io/BufferedReader;
    .restart local v3    # "numIndex":I
    .restart local v13    # "numString":Ljava/lang/String;
    .restart local v14    # "errorCode":I
    :catch_2
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v24, v13

    move/from16 v23, v14

    .line 997
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "numIndex":I
    .end local v13    # "numString":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "numIndex":I
    .restart local v23    # "errorCode":I
    .restart local v24    # "numString":Ljava/lang/String;
    move-object v2, v0

    .line 998
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse numbers in "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    goto :goto_8

    .line 981
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    .end local v21    # "in":Ljava/io/BufferedReader;
    .end local v22    # "numIndex":I
    .end local v23    # "errorCode":I
    .end local v24    # "numString":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "errorCode":I
    :cond_e
    move-object/from16 v21, v2

    move/from16 v23, v14

    .line 981
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v14    # "errorCode":I
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "errorCode":I
    :goto_8
    move v0, v15

    move-object/from16 v2, v21

    move/from16 v14, v23

    .line 981
    .end local v15    # "causeCode":I
    .end local v21    # "in":Ljava/io/BufferedReader;
    .end local v23    # "errorCode":I
    .local v0, "causeCode":I
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "errorCode":I
    :goto_9
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 1072
    .end local v0    # "causeCode":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytesWrittenInMiB":I
    .end local v6    # "timeTotal":I
    .end local v7    # "uncryptTime":I
    .end local v8    # "bytesStashedInMiB":I
    .end local v9    # "sourceVersion":I
    .end local v10    # "temperatureStart":I
    .end local v11    # "temperatureEnd":I
    .end local v12    # "temperatureMax":I
    .end local v14    # "errorCode":I
    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    .line 1072
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v21    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_d

    .line 971
    .end local v21    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    move-object v3, v0

    .line 971
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v21    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 1041
    .end local v21    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "bytesWrittenInMiB":I
    .restart local v6    # "timeTotal":I
    .restart local v7    # "uncryptTime":I
    .restart local v8    # "bytesStashedInMiB":I
    .restart local v9    # "sourceVersion":I
    .restart local v10    # "temperatureStart":I
    .restart local v11    # "temperatureEnd":I
    .restart local v12    # "temperatureMax":I
    .restart local v14    # "errorCode":I
    .restart local v15    # "causeCode":I
    :cond_f
    move-object/from16 v21, v2

    move/from16 v23, v14

    .line 1041
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v14    # "errorCode":I
    .restart local v21    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "errorCode":I
    const/4 v2, -0x1

    if-eq v6, v2, :cond_10

    .line 1042
    const-string/jumbo v0, "ota_time_total"

    invoke-static {v1, v0, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_a

    .line 1072
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytesWrittenInMiB":I
    .end local v6    # "timeTotal":I
    .end local v7    # "uncryptTime":I
    .end local v8    # "bytesStashedInMiB":I
    .end local v9    # "sourceVersion":I
    .end local v10    # "temperatureStart":I
    .end local v11    # "temperatureEnd":I
    .end local v12    # "temperatureMax":I
    .end local v15    # "causeCode":I
    .end local v23    # "errorCode":I
    :catchall_1
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_b

    .line 971
    :catch_4
    move-exception v0

    move-object v3, v0

    move-object/from16 v2, v21

    goto :goto_c

    .line 1044
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "bytesWrittenInMiB":I
    .restart local v6    # "timeTotal":I
    .restart local v7    # "uncryptTime":I
    .restart local v8    # "bytesStashedInMiB":I
    .restart local v9    # "sourceVersion":I
    .restart local v10    # "temperatureStart":I
    .restart local v11    # "temperatureEnd":I
    .restart local v12    # "temperatureMax":I
    .restart local v15    # "causeCode":I
    .restart local v23    # "errorCode":I
    :cond_10
    :goto_a
    const/4 v2, -0x1

    if-eq v7, v2, :cond_11

    .line 1045
    const-string/jumbo v0, "ota_uncrypt_time"

    invoke-static {v1, v0, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1047
    :cond_11
    const/4 v2, -0x1

    if-eq v9, v2, :cond_12

    .line 1048
    const-string/jumbo v0, "ota_source_version"

    invoke-static {v1, v0, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1050
    :cond_12
    const/4 v2, -0x1

    if-eq v5, v2, :cond_13

    .line 1051
    const-string/jumbo v0, "ota_written_in_MiBs"

    invoke-static {v1, v0, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1053
    :cond_13
    const/4 v2, -0x1

    if-eq v8, v2, :cond_14

    .line 1054
    const-string/jumbo v0, "ota_stashed_in_MiBs"

    invoke-static {v1, v0, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1056
    :cond_14
    const/4 v2, -0x1

    if-eq v10, v2, :cond_15

    .line 1057
    const-string/jumbo v0, "ota_temperature_start"

    invoke-static {v1, v0, v10}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1059
    :cond_15
    const/4 v2, -0x1

    if-eq v11, v2, :cond_16

    .line 1060
    const-string/jumbo v0, "ota_temperature_end"

    invoke-static {v1, v0, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1062
    :cond_16
    const/4 v2, -0x1

    if-eq v12, v2, :cond_17

    .line 1063
    const-string/jumbo v0, "ota_temperature_max"

    invoke-static {v1, v0, v12}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1065
    :cond_17
    move/from16 v14, v23

    const/4 v2, -0x1

    if-eq v14, v2, :cond_18

    .line 1066
    .end local v23    # "errorCode":I
    .restart local v14    # "errorCode":I
    const-string/jumbo v0, "ota_non_ab_error_code"

    invoke-static {v1, v0, v14}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1068
    :cond_18
    const/4 v2, -0x1

    if-eq v15, v2, :cond_19

    .line 1069
    const-string/jumbo v0, "ota_non_ab_cause_code"

    invoke-static {v1, v0, v15}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1072
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytesWrittenInMiB":I
    .end local v6    # "timeTotal":I
    .end local v7    # "uncryptTime":I
    .end local v8    # "bytesStashedInMiB":I
    .end local v9    # "sourceVersion":I
    .end local v10    # "temperatureStart":I
    .end local v11    # "temperatureEnd":I
    .end local v12    # "temperatureMax":I
    .end local v14    # "errorCode":I
    .end local v15    # "causeCode":I
    :cond_19
    move-object/from16 v2, v21

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v3, v2}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1074
    .end local v21    # "in":Ljava/io/BufferedReader;
    goto :goto_e

    .line 1072
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    :goto_b
    const/4 v3, 0x0

    goto :goto_d

    .line 971
    :catch_5
    move-exception v0

    move-object v3, v0

    :goto_c
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1072
    :catchall_3
    move-exception v0

    :goto_d
    :try_start_9
    invoke-static {v3, v2}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1072
    .end local v2    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .line 1073
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "RecoverySystem"

    const-string v3, "Failed to read lines in last_install"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1075
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    .line 508
    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 447
    .local v1, "rs":Landroid/os/RecoverySystem;
    const/4 v2, 0x0

    .line 448
    .local v2, "progressListener":Landroid/os/IRecoverySystemProgressListener;
    if-eqz p2, :cond_2

    .line 450
    if-eqz p3, :cond_1

    .line 451
    move-object v3, p3

    .line 451
    .local v3, "progressHandler":Landroid/os/Handler;
    goto :goto_0

    .line 453
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 455
    .restart local v3    # "progressHandler":Landroid/os/Handler;
    :goto_0
    new-instance v4, Landroid/os/RecoverySystem$2;

    invoke-direct {v4, v3, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object v2, v4

    .line 483
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_2
    invoke-direct {v1, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    return-void

    .line 484
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "process package failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z
    .locals 5
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 393
    .local v0, "zip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "compatibility.zip"

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_0

    .line 395
    const/4 v3, 0x1

    .line 399
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 395
    return v3

    .line 397
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 398
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 398
    return v4

    .line 399
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :goto_0
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    const/4 v0, 0x0

    .line 887
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "--prompt_and_wipe_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method private rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 1195
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .line 1198
    :goto_0
    return-void
.end method

.method public static rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--wipe_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 940
    .local v3, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "--wipe_ab"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "--wipe_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 721
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 727
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 734
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 740
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v9, p0

    .line 766
    const-string/jumbo v0, "user"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/UserManager;

    .line 767
    .local v10, "um":Landroid/os/UserManager;
    if-nez p3, :cond_1

    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wiping data is not allowed for this user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    move-object v11, v0

    .line 772
    .local v11, "condition":Landroid/os/ConditionVariable;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 773
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v0, 0x11000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 775
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.MASTER_CLEAR"

    new-instance v4, Landroid/os/RecoverySystem$3;

    invoke-direct {v4, v11}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, v12

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 785
    invoke-virtual {v11}, Landroid/os/ConditionVariable;->block()V

    .line 787
    if-eqz p4, :cond_2

    .line 788
    const-string v1, "android"

    invoke-static {v9, v1}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    .line 791
    :cond_2
    const/4 v1, 0x0

    .line 792
    .local v1, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 793
    const-string v1, "--shutdown_after"

    .line 796
    :cond_3
    const/4 v3, 0x0

    .line 797
    .local v3, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 801
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, "localeArg":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    const-string v7, "--wipe_data"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-static {v9, v5}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "name"    # Ljava/io/File;

    .line 1141
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1144
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1145
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1143
    .end local v2    # "f":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    const-string v0, "RecoverySystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1152
    :cond_1
    const-string v0, "RecoverySystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :goto_1
    return-void
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 1205
    const/16 v0, 0x3f

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1206
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1207
    return-object p0
.end method

.method public static scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "_s.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 666
    .local v1, "securityUpdate":Z
    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    const-string v0, "@/cache/recovery/block.map"

    .line 670
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "localeArg":Ljava/lang/String;
    const-string v4, "--security\n"

    .line 674
    .local v4, "securityArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v5, "command":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 676
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "--security\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 679
    :cond_1
    const-string/jumbo v6, "recovery"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RecoverySystem;

    .line 680
    .local v6, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v6, v5}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 683
    return-void

    .line 681
    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "schedule update on boot failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private setupBcb(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 1172
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1173
    :catch_0
    move-exception v0

    .line 1175
    const/4 v0, 0x0

    return v0
.end method

.method private uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 1
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 1161
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    const/4 v0, 0x0

    return v0
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 31
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v9, p1

    .line 216
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 218
    .local v10, "fileLen":J
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    move-object/from16 v12, p0

    invoke-direct {v0, v12, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 220
    .local v13, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 221
    .local v5, "startTimeMillis":J
    const/4 v0, 0x0

    if-eqz v9, :cond_0

    .line 222
    invoke-interface {v9, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 225
    :cond_0
    const-wide/16 v1, 0x6

    sub-long v1, v10, v1

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 226
    const/4 v1, 0x6

    new-array v2, v1, [B

    move-object v14, v2

    .line 227
    .local v14, "footer":[B
    invoke-virtual {v13, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 229
    const/4 v2, 0x2

    aget-byte v3, v14, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    const/4 v3, 0x3

    aget-byte v7, v14, v3

    if-ne v7, v4, :cond_f

    .line 233
    const/4 v4, 0x4

    aget-byte v7, v14, v4

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x5

    aget-byte v15, v14, v8

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v15, v7

    .line 234
    .local v15, "commentSize":I
    aget-byte v7, v14, v0

    and-int/lit16 v7, v7, 0xff

    const/16 v16, 0x1

    aget-byte v4, v14, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v7, v4

    .line 236
    .local v7, "signatureStart":I
    add-int/lit8 v4, v15, 0x16

    new-array v4, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 237
    .local v4, "eocd":[B
    add-int/lit8 v1, v15, 0x16

    int-to-long v8, v1

    sub-long v8, v10, v8

    :try_start_1
    invoke-virtual {v13, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 238
    invoke-virtual {v13, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 242
    aget-byte v1, v4, v0

    const/16 v8, 0x50

    if-ne v1, v8, :cond_e

    aget-byte v1, v4, v16

    const/16 v9, 0x4b

    if-ne v1, v9, :cond_e

    aget-byte v1, v4, v2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    aget-byte v1, v4, v3

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e

    .line 247
    const/16 v17, 0x4

    .line 247
    .local v17, "i":I
    :goto_0
    move/from16 v1, v17

    .line 247
    .end local v17    # "i":I
    .local v1, "i":I
    array-length v2, v4

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 248
    aget-byte v2, v4, v1

    if-ne v2, v8, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v4, v2

    if-ne v2, v9, :cond_2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v4, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v4, v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    const-string v2, "EOCD marker found after start of EOCD"

    invoke-direct {v0, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2
    const/4 v3, 0x6

    :goto_1
    add-int/lit8 v17, v1, 0x1

    .line 247
    .end local v1    # "i":I
    .restart local v17    # "i":I
    const/4 v3, 0x3

    goto :goto_0

    .line 255
    .end local v17    # "i":I
    :cond_3
    new-instance v1, Lsun/security/pkcs/PKCS7;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v3, v15, 0x16

    sub-int/2addr v3, v7

    invoke-direct {v2, v4, v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    move-object v9, v1

    .line 260
    .local v9, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v9}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    move-object v2, v1

    .line 261
    .local v2, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_d

    array-length v1, v2

    if-eqz v1, :cond_d

    .line 264
    aget-object v1, v2, v0

    move-object v3, v1

    .line 265
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 267
    .local v1, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v9}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v8

    .line 268
    .local v8, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v8, :cond_c

    array-length v0, v8

    if-eqz v0, :cond_c

    .line 271
    const/4 v0, 0x0

    aget-object v0, v8, v0

    .line 275
    .local v0, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v16, 0x0

    .line 277
    .local v16, "verified":Z
    if-nez p2, :cond_4

    sget-object v18, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 276
    move-object/from16 v24, v2

    move-object/from16 v2, v18

    goto :goto_2

    :cond_4
    move-object/from16 v24, v2

    move-object/from16 v2, p2

    .line 276
    .end local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .local v24, "certificates":[Ljava/security/cert/X509Certificate;
    :goto_2
    invoke-static {v2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v2

    .line 278
    .local v2, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v25, v3

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 278
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .local v25, "cert":Ljava/security/cert/X509Certificate;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    move-object/from16 v26, v18

    .line 279
    .local v26, "c":Ljava/security/cert/X509Certificate;
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v2, v26

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 279
    .end local v26    # "c":Ljava/security/cert/X509Certificate;
    .local v2, "c":Ljava/security/cert/X509Certificate;
    .local v27, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 280
    const/16 v16, 0x1

    .line 281
    goto :goto_4

    .line 283
    .end local v2    # "c":Ljava/security/cert/X509Certificate;
    :cond_5
    nop

    .line 278
    move-object/from16 v2, v27

    move-object/from16 v3, v28

    goto :goto_3

    .line 284
    .end local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .local v2, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :cond_6
    move-object/from16 v27, v2

    .line 284
    .end local v2    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :goto_4
    if-eqz v16, :cond_b

    .line 290
    const-wide/16 v2, 0x0

    invoke-virtual {v13, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    move-object/from16 v18, v8

    move-object/from16 v2, p1

    move-object v8, v2

    .line 292
    .local v8, "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .local v18, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    :try_start_2
    new-instance v3, Landroid/os/RecoverySystem$1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v1

    move-object v1, v3

    .line 292
    .end local v1    # "signatureKey":Ljava/security/PublicKey;
    .local v19, "signatureKey":Ljava/security/PublicKey;
    move-object v12, v3

    move-object/from16 v29, v14

    move-object/from16 v20, v24

    move-object/from16 v21, v25

    move-object/from16 v22, v27

    move-object v14, v2

    move-wide v2, v10

    .line 292
    .end local v14    # "footer":[B
    .end local v24    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v25    # "cert":Ljava/security/cert/X509Certificate;
    .end local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .local v20, "certificates":[Ljava/security/cert/X509Certificate;
    .local v21, "cert":Ljava/security/cert/X509Certificate;
    .local v22, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .local v29, "footer":[B
    move-object/from16 v23, v4

    move v4, v15

    .line 292
    .end local v4    # "eocd":[B
    .local v23, "eocd":[B
    move/from16 v24, v7

    move-object v7, v13

    .line 292
    .end local v7    # "signatureStart":I
    .local v24, "signatureStart":I
    :try_start_3
    invoke-direct/range {v1 .. v8}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    invoke-virtual {v9, v0, v12}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v1

    .line 337
    .local v1, "verifyResult":Lsun/security/pkcs/SignerInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 338
    .local v2, "interrupted":Z
    if-eqz v14, :cond_7

    .line 339
    const/16 v3, 0x64

    invoke-interface {v14, v3}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 342
    :cond_7
    if-nez v2, :cond_a

    .line 346
    if-eqz v1, :cond_9

    .line 350
    .end local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v2    # "interrupted":Z
    .end local v5    # "startTimeMillis":J
    .end local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v9    # "block":Lsun/security/pkcs/PKCS7;
    .end local v15    # "commentSize":I
    .end local v16    # "verified":Z
    .end local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 351
    nop

    .line 354
    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 357
    return-void

    .line 355
    :cond_8
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "package compatibility verification failed"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    .restart local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .restart local v2    # "interrupted":Z
    .restart local v5    # "startTimeMillis":J
    .restart local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .restart local v9    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v15    # "commentSize":I
    .restart local v16    # "verified":Z
    .restart local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v21    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v23    # "eocd":[B
    .restart local v24    # "signatureStart":I
    .restart local v29    # "footer":[B
    :cond_9
    :try_start_4
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "signature digest verification failed"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    :cond_a
    new-instance v3, Ljava/security/SignatureException;

    const-string/jumbo v4, "verification was interrupted"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    .end local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v1    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v2    # "interrupted":Z
    .end local v5    # "startTimeMillis":J
    .end local v8    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v9    # "block":Lsun/security/pkcs/PKCS7;
    .end local v15    # "commentSize":I
    .end local v16    # "verified":Z
    .end local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    :catchall_0
    move-exception v0

    move-object v14, v2

    goto/16 :goto_5

    .line 285
    .restart local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v1, "signatureKey":Ljava/security/PublicKey;
    .restart local v4    # "eocd":[B
    .restart local v5    # "startTimeMillis":J
    .restart local v7    # "signatureStart":I
    .local v8, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v9    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v14    # "footer":[B
    .restart local v15    # "commentSize":I
    .restart local v16    # "verified":Z
    .local v24, "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v25    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :cond_b
    move-object/from16 v19, v1

    move-object/from16 v23, v4

    move-object/from16 v18, v8

    move-object/from16 v29, v14

    move-object/from16 v20, v24

    move-object/from16 v21, v25

    move-object/from16 v22, v27

    move-object/from16 v14, p1

    move/from16 v24, v7

    .end local v1    # "signatureKey":Ljava/security/PublicKey;
    .end local v4    # "eocd":[B
    .end local v7    # "signatureStart":I
    .end local v8    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v14    # "footer":[B
    .end local v25    # "cert":Ljava/security/cert/X509Certificate;
    .end local v27    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v21    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v23    # "eocd":[B
    .local v24, "signatureStart":I
    .restart local v29    # "footer":[B
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature doesn\'t match any trusted key"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    .end local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .end local v16    # "verified":Z
    .end local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v22    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    .restart local v1    # "signatureKey":Ljava/security/PublicKey;
    .local v2, "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "eocd":[B
    .restart local v7    # "signatureStart":I
    .restart local v8    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v14    # "footer":[B
    :cond_c
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v18, v8

    move-object/from16 v29, v14

    move-object/from16 v14, p1

    .end local v1    # "signatureKey":Ljava/security/PublicKey;
    .end local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "eocd":[B
    .end local v7    # "signatureStart":I
    .end local v8    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v14    # "footer":[B
    .restart local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v19    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v21    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v23    # "eocd":[B
    .restart local v24    # "signatureStart":I
    .restart local v29    # "footer":[B
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature contains no signedData"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    .end local v18    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v19    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    .restart local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "eocd":[B
    .restart local v7    # "signatureStart":I
    .restart local v14    # "footer":[B
    :cond_d
    move-object/from16 v20, v2

    move-object/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v29, v14

    move-object/from16 v14, p1

    .line 262
    .end local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v4    # "eocd":[B
    .end local v7    # "signatureStart":I
    .end local v14    # "footer":[B
    .restart local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v23    # "eocd":[B
    .restart local v24    # "signatureStart":I
    .restart local v29    # "footer":[B
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature contains no certificates"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    .end local v9    # "block":Lsun/security/pkcs/PKCS7;
    .end local v20    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    .restart local v4    # "eocd":[B
    .restart local v7    # "signatureStart":I
    .restart local v14    # "footer":[B
    :cond_e
    move-object/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v29, v14

    move-object/from16 v14, p1

    .line 244
    .end local v4    # "eocd":[B
    .end local v7    # "signatureStart":I
    .end local v14    # "footer":[B
    .restart local v23    # "eocd":[B
    .restart local v24    # "signatureStart":I
    .restart local v29    # "footer":[B
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (bad footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    .end local v5    # "startTimeMillis":J
    .end local v15    # "commentSize":I
    .end local v23    # "eocd":[B
    .end local v24    # "signatureStart":I
    .end local v29    # "footer":[B
    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_5

    .line 230
    .restart local v5    # "startTimeMillis":J
    .restart local v14    # "footer":[B
    :cond_f
    move-object/from16 v29, v14

    move-object v14, v9

    .line 230
    .end local v14    # "footer":[B
    .restart local v29    # "footer":[B
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (no footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 350
    .end local v5    # "startTimeMillis":J
    .end local v29    # "footer":[B
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v14, v9

    :goto_5
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public static verifyPackageCompatibility(Ljava/io/File;)Z
    .locals 3
    .param p0, "compatibilityFile"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 415
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 415
    return v2

    .line 416
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 414
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :goto_0
    invoke-static {v1, v0}, Landroid/os/RecoverySystem;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 368
    .local v1, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .line 368
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    .line 370
    .local v4, "entrySize":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 374
    long-to-int v2, v4

    new-array v2, v2, [B

    .line 375
    .local v2, "bytes":[B
    invoke-static {v1, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 376
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v2    # "bytes":[B
    .end local v4    # "entrySize":J
    goto :goto_0

    .line 371
    .restart local v4    # "entrySize":J
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid entry size ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ") in the compatibility file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    .end local v4    # "entrySize":J
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Landroid/os/VintfObject;->verify([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 379
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "no entries found in the compatibility file"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 813
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 814
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v0, "euicc_provisioned"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 817
    const-string v0, "RecoverySystem"

    const-string v3, "Skipping eUICC wipe/retain as it is not provisioned"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return v4

    .line 821
    :cond_0
    const-string v0, "euicc"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telephony/euicc/EuiccManager;

    .line 823
    .local v5, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 824
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v0

    .line 825
    .local v4, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v6, v0

    .line 827
    .local v6, "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Landroid/os/RecoverySystem$4;

    invoke-direct {v0, v6, v4}, Landroid/os/RecoverySystem$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    move-object v7, v0

    .line 845
    .local v7, "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 846
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    const/high16 v0, 0x8000000

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v3, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 849
    .local v10, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v11, v0

    .line 850
    .local v11, "filterConsent":Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    new-instance v0, Landroid/os/HandlerThread;

    const-string v12, "euiccWipeFinishReceiverThread"

    invoke-direct {v0, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 852
    .local v12, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 853
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v0, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v13, v0

    .line 854
    .local v13, "euiccHandler":Landroid/os/Handler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v14, 0x0

    .line 855
    invoke-virtual {v0, v7, v11, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 856
    invoke-virtual {v5, v10}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 858
    nop

    .line 859
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "euicc_factory_reset_timeout_millis"
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v4

    const-wide/16 v3, 0x7530

    .line 858
    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v16, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :try_start_1
    invoke-static {v0, v14, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 862
    .local v3, "waitingTimeMillis":J
    const-wide/16 v17, 0x1388

    cmp-long v0, v3, v17

    if-gez v0, :cond_1

    .line 863
    const-wide/16 v3, 0x1388

    goto :goto_0

    .line 864
    :cond_1
    const-wide/32 v17, 0xea60

    cmp-long v0, v3, v17

    if-lez v0, :cond_2

    .line 865
    const-wide/32 v3, 0xea60

    .line 867
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v14, v16

    :try_start_2
    invoke-virtual {v14, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v14, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_3

    .line 868
    const-string v0, "RecoverySystem"

    const-string v15, "Timeout wiping eUICC data."

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 869
    nop

    .line 876
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 869
    const/4 v15, 0x0

    return v15

    .line 876
    .end local v3    # "waitingTimeMillis":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 877
    nop

    .line 878
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 871
    :catch_0
    move-exception v0

    goto :goto_1

    .line 876
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v0

    move-object/from16 v14, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_2

    .line 871
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_1
    move-exception v0

    move-object/from16 v14, v16

    .end local v16    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_1

    .line 876
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1
    move-exception v0

    move-object v14, v4

    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_2

    .line 871
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_2
    move-exception v0

    move-object v14, v4

    .line 872
    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 873
    const-string v3, "RecoverySystem"

    const-string v4, "Wiping eUICC data interrupted"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 874
    nop

    .line 876
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 874
    const/4 v3, 0x0

    return v3

    .line 876
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0

    .line 880
    .end local v6    # "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v7    # "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v11    # "filterConsent":Landroid/content/IntentFilter;
    .end local v12    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v13    # "euiccHandler":Landroid/os/Handler;
    .end local v14    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    move-object/from16 v9, p1

    const/4 v3, 0x0

    return v3
.end method
