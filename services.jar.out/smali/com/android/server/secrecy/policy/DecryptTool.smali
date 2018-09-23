.class public Lcom/android/server/secrecy/policy/DecryptTool;
.super Ljava/lang/Object;
.source "DecryptTool.java"


# static fields
.field private static final ENCRYPT_ADB_PROP:Ljava/lang/String; = "encrypt_adb"

.field private static final ENCRYPT_ALL_PROP:Ljava/lang/String; = "encrypt_all"

.field private static final ENCRYPT_APP_PROP:Ljava/lang/String; = "encrypt_app"

.field private static final ENCRYPT_LOG_PROP:Ljava/lang/String; = "encrypt_log"

.field private static final ENCRYPT_UNLOCK_TYPE:Ljava/lang/String; = "unlock_type"

.field private static final IMEI_PROP:Ljava/lang/String; = "imei"

.field private static final MODULUS:Ljava/lang/String; = "14o4ia2g027r2dcmf4mw9f1pvoifswti3i2x1fvtmxsqpjvjqj1ry3dvmlyuwn9lhxl03bgvxxo5sgj5opu1l8vov2jrdlaf3031z3drh72068omvyft11qdaszicxys2bjqi9sxl5z79mzy6dcmubwqyi7fr424okmq9wyxctpmni43ok5d2ac9v5dezpu68send5foga4xxnpckhuzcjhnb4y7ot4z0ypm9j3hb59ax8v7n4ed82p01xtmu73iajvjnxov4wfuni17mmhi9smsf3sak8q9k04no4u8f7um8h4qhqk3xww3nmohl4190hr2rwnsw5nw1qs7vh60adz8a94qkeerkvvkf2b6qznm3q5x2aa1e8u9fq4liav015vwx5xzfn64b"

.field private static final ONE_DAY_IN_MILLIS:J = 0x5265c00L

.field private static final PUBLIC_EXPONENT:Ljava/lang/String; = "1ekh"

.field private static final STAMP_PROP:Ljava/lang/String; = "stamp"

.field private static final TAG:Ljava/lang/String; = "SecrecyService.DecryptTool"

.field public static final UNLOCK_TYPE_ID:Ljava/lang/String; = "id"

.field public static final UNLOCK_TYPE_INTERNAL:Ljava/lang/String; = "internal"

.field public static final UNLOCK_TYPE_MAC:Ljava/lang/String; = "mac"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/PolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    iput-object p1, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mContext:Landroid/content/Context;

    return-void
.end method

.method private verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "14o4ia2g027r2dcmf4mw9f1pvoifswti3i2x1fvtmxsqpjvjqj1ry3dvmlyuwn9lhxl03bgvxxo5sgj5opu1l8vov2jrdlaf3031z3drh72068omvyft11qdaszicxys2bjqi9sxl5z79mzy6dcmubwqyi7fr424okmq9wyxctpmni43ok5d2ac9v5dezpu68send5foga4xxnpckhuzcjhnb4y7ot4z0ypm9j3hb59ax8v7n4ed82p01xtmu73iajvjnxov4wfuni17mmhi9smsf3sak8q9k04no4u8f7um8h4qhqk3xww3nmohl4190hr2rwnsw5nw1qs7vh60adz8a94qkeerkvvkf2b6qznm3q5x2aa1e8u9fq4liav015vwx5xzfn64b"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "1ekh"

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/android/server/secrecy/RSA;->initRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/PublicKey;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {v2, v4}, Lcom/android/server/secrecy/RSA;->decrypt(Ljava/security/PublicKey;[B)[B

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/secrecy/RSA;->shaDigest(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v5, :cond_2

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    array-length v7, v5

    array-length v8, v6

    if-le v7, v8, :cond_1

    array-length v7, v6

    new-array v7, v7, [B

    array-length v8, v5

    array-length v9, v6

    sub-int/2addr v8, v9

    array-length v9, v6

    invoke-static {v5, v8, v7, v3, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_1
    move-object v7, v5

    :goto_0
    move-object v3, v7

    invoke-static {v6, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    return v7

    :cond_2
    :goto_1
    const-string v7, "SecrecyService.DecryptTool"

    const-string v8, "ERROR: Verify signature failed."

    invoke-static {v7, v8}, Lcom/android/server/secrecy/policy/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception v4

    const-string v5, "SecrecyService.DecryptTool"

    const-string v6, "ERROR: Signature is malformat."

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public config(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9

    const-string v0, "SecrecyService.DecryptTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string v4, "encrypt_app"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecrecyService.DecryptTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptAppSuggest prop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v5, "encrypt_log"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptLogSuggest prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v5, "encrypt_adb"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptAdbSuggest prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v5, "encrypt_all"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptAll prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_6
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string v6, "config"

    invoke-virtual {v5, v3, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    const-string v5, "OK"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v5, "ERROR: Config argument is illegal."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v4, "ERROR: Config argument is malformat."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public config(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v5

    const-string v0, "SecrecyService.DecryptTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", signature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecrecyService.DecryptTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imei = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/16 v6, 0xd

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v8, v0

    :try_start_0
    invoke-virtual {v8, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    nop

    const-string/jumbo v0, "imei"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v0

    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string/jumbo v0, "stamp"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    const-wide/16 v12, -0x1

    const/16 v0, 0x10

    :try_start_1
    invoke-static {v11, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v12, v14

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    add-long v18, v14, v16

    cmp-long v0, v12, v18

    if-gtz v0, :cond_3

    sub-long v16, v14, v16

    cmp-long v0, v12, v16

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/secrecy/SecrecyConfig;->getInstance()Lcom/android/server/secrecy/SecrecyConfig;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/secrecy/SecrecyConfig;->calculateChallenge(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v20, v0

    const-string v0, "ERROR: Signature doesn\'t match."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "ERROR: stamp is expired."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v14, v0

    const-string v14, "ERROR: stamp is invalid."

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {v1, v3, v4}, Lcom/android/server/secrecy/policy/DecryptTool;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ERROR: Signature doesn\'t match."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string v0, "encrypt_app"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptAppSuggest prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v12, :cond_7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string v12, "false"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    const-string v12, "encrypt_log"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptLogSuggest prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_9
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    const-string v12, "false"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_3
    const-string v12, "encrypt_adb"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptAdbSuggest prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_c
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x4

    if-eqz v12, :cond_d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    const-string v12, "false"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_4
    const-string v12, "encrypt_all"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptAll prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_f
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, v1, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v12, v10, v15}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    goto :goto_5

    :cond_10
    const-string v12, "false"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v1, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    :cond_11
    :goto_5
    const-string/jumbo v12, "unlock_type"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptUnlockType prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_12
    iget-object v12, v1, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v12, v10, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    const-string v12, "OK"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_13
    :goto_6
    const-string v0, "ERROR: IMEI doesn\'t match."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SecrecyService.DecryptTool"

    const-string v11, "ERROR: IMEI doesn\'t match."

    invoke-static {v0, v11}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    move-object v9, v0

    const-string v9, "ERROR: Config argument is malformat."

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public verifyKey(Ljava/io/PrintWriter;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/secrecy/policy/DecryptTool;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OK: key imported successful!"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "ERROR: The key to import is invalid."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
