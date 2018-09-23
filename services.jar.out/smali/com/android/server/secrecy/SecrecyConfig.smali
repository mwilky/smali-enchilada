.class public Lcom/android/server/secrecy/SecrecyConfig;
.super Ljava/lang/Object;
.source "SecrecyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/SecrecyConfig$MyHandler;
    }
.end annotation


# static fields
.field private static final ENCRYPT_ADB_PROP:Ljava/lang/String; = "encrypt_adb"

.field private static final ENCRYPT_APP_PROP:Ljava/lang/String; = "encrypt_app"

.field private static final ENCRYPT_LOG_PROP:Ljava/lang/String; = "encrypt_log"

.field private static final IMEI_PROP:Ljava/lang/String; = "imei"

.field private static final LAST_DOWNLODE_TIME:Ljava/lang/String; = "last_download_time"

.field private static final MSG_LOAD_CONFIG:I = 0x1

.field private static final MSG_NOTIFY_CONFIG_CHANGED:I = 0x3

.field private static final MSG_SAVE_CONFIG:I = 0x2

.field private static final RC4_KEY_PROP:Ljava/lang/String; = "rc4_key"

.field private static final TAG:Ljava/lang/String; = "SecrecyService.SecrecyConfig"

.field private static sInstance:Lcom/android/server/secrecy/SecrecyConfig;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final ENCRYPT_CONFIG_PATH:Ljava/lang/String;

.field private mConfigImei:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

.field private mRC4Key:[B

.field private final mRC4Sbox:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/SecrecyConfig;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/mnt/vendor/persist/engineermode/engineermode_config"

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->ENCRYPT_CONFIG_PATH:Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/secrecy/SecrecyConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyConfig;->loadSecrecyConfigInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/secrecy/SecrecyConfig;)Lcom/android/server/secrecy/policy/PolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/secrecy/SecrecyConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyConfig;->saveSecrecyConfigInternal()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/secrecy/SecrecyConfig;
    .locals 2

    sget-object v0, Lcom/android/server/secrecy/SecrecyConfig;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/secrecy/SecrecyConfig;->sInstance:Lcom/android/server/secrecy/SecrecyConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/secrecy/SecrecyConfig;

    invoke-direct {v1}, Lcom/android/server/secrecy/SecrecyConfig;-><init>()V

    sput-object v1, Lcom/android/server/secrecy/SecrecyConfig;->sInstance:Lcom/android/server/secrecy/SecrecyConfig;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/secrecy/SecrecyConfig;->sInstance:Lcom/android/server/secrecy/SecrecyConfig;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private loadSecrecyConfigInternal()V
    .locals 18

    move-object/from16 v1, p0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "17819"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/secrecy/policy/util/Utils;->isFlashedInternal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string/jumbo v5, "load_config"

    invoke-virtual {v0, v2, v5, v4}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/secrecy/SecrecyConfig;->readConfig()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/PolicyManager;->getDefaultPolicy()Z

    move-result v9

    move v10, v9

    move v11, v9

    move v12, v9

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v13, v0

    const/4 v0, 0x0

    move-object v14, v0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v15, "utf-8"

    invoke-virtual {v8, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo v0, "rc4_key"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v15, v0

    if-nez v15, :cond_2

    :try_start_1
    const-string v0, "SecrecyService.SecrecyConfig"

    const-string v4, "RC4Key is null, use defaultPolicy"

    invoke-static {v0, v4}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v0, v2, v9}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    iget-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string/jumbo v4, "load_config"

    invoke-virtual {v0, v2, v4}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    :goto_1
    move-object v3, v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_6

    :cond_2
    :try_start_3
    invoke-static {v15}, Landroid/secrecy/RC4;->decodeHexRC4(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    iget-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    iget-object v4, v1, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    invoke-static {v0, v4}, Landroid/secrecy/RC4;->mixSbox([B[B)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    nop

    :try_start_4
    const-string/jumbo v0, "imei"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_3

    :try_start_5
    iput-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    const-string v4, "encrypt_log"

    invoke-virtual {v13, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_4

    :try_start_7
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v10, v5

    :cond_4
    :try_start_8
    const-string v5, "encrypt_app"

    invoke-virtual {v13, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v5, :cond_5

    :try_start_9
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v11, v6

    :cond_5
    :try_start_a
    const-string v6, "encrypt_adb"

    invoke-virtual {v13, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v6, :cond_6

    :try_start_b
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v12, v7

    :cond_6
    const/4 v7, 0x1

    :try_start_c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v16, v0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string/jumbo v7, "load_config"
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v17, v3

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {v0, v2, v7, v3}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string/jumbo v0, "last_download_time"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v3, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->setLastDownloadTimeInMills(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    nop

    :try_start_e
    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    :goto_2
    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    :try_start_f
    iget-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v0, v2, v9}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    iget-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string/jumbo v4, "load_config"

    invoke-virtual {v0, v2, v4}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    nop

    :try_start_10
    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    :goto_4
    if-eqz v14, :cond_7

    :try_start_11
    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    :cond_7
    :goto_5
    throw v3

    :catch_7
    move-exception v0

    move-object/from16 v17, v3

    :goto_6
    if-eqz v14, :cond_8

    :try_start_12
    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_2

    :cond_8
    :goto_7
    return-void
.end method

.method private readConfig()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/vendor/persist/engineermode/engineermode_config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_1
    :goto_2
    return-object v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw v3
.end method

.method private saveSecrecyConfigInternal()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    if-nez v0, :cond_0

    const-string v0, "SecrecyService.SecrecyConfig"

    const-string v1, "RC4Key is null, skip save action"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v6}, Lcom/android/server/secrecy/policy/PolicyManager;->getCurrentDownloadTimeInMills()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string/jumbo v7, "imei"

    iget-object v8, p0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v7, "rc4_key"

    iget-object v8, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    invoke-static {v8}, Landroid/secrecy/RC4;->encodeHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "encrypt_log"

    if-eqz v3, :cond_2

    const-string/jumbo v8, "true"

    goto :goto_0

    :cond_2
    const-string v8, "false"

    :goto_0
    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "encrypt_app"

    if-eqz v4, :cond_3

    const-string/jumbo v8, "true"

    goto :goto_1

    :cond_3
    const-string v8, "false"

    :goto_1
    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "encrypt_adb"

    if-eqz v5, :cond_4

    const-string/jumbo v8, "true"

    goto :goto_2

    :cond_4
    const-string v8, "false"

    :goto_2
    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v7, "last_download_time"

    invoke-virtual {v0, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/secrecy/SecrecyConfig;->writeConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    :cond_5
    :goto_4
    throw v1

    :catch_2
    move-exception v1

    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_6
    :goto_5
    return-void
.end method

.method private writeConfig(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/vendor/persist/engineermode/engineermode_config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public calculateChallenge(J)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroid/secrecy/RC4;->longToBytes(J)[B

    move-result-object v0

    const/16 v1, 0x100

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    iget-object v3, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v1, v0}, Landroid/secrecy/RC4;->encrypt([B[B)V

    invoke-static {v0}, Landroid/secrecy/RC4;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SecrecyConfig dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRC4Key  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRC4Sbox = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mImei = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getSecrecyKey([B)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v0, 0x1

    return v0
.end method

.method public loadSecrecyConfig()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public saveImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    return-void
.end method

.method public saveRC4Key(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    return-void
.end method

.method public saveSecrecyConfig(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setPolicyManager(Lcom/android/server/secrecy/policy/PolicyManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    new-instance v0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;-><init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;Lcom/android/server/secrecy/SecrecyConfig$1;)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    return-void
.end method
