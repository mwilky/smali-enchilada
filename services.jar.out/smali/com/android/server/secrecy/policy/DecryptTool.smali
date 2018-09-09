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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyManager"    # Lcom/android/server/secrecy/policy/PolicyManager;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    .line 49
    iput-object p1, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "signatureStr"    # Ljava/lang/String;

    .line 227
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "14o4ia2g027r2dcmf4mw9f1pvoifswti3i2x1fvtmxsqpjvjqj1ry3dvmlyuwn9lhxl03bgvxxo5sgj5opu1l8vov2jrdlaf3031z3drh72068omvyft11qdaszicxys2bjqi9sxl5z79mzy6dcmubwqyi7fr424okmq9wyxctpmni43ok5d2ac9v5dezpu68send5foga4xxnpckhuzcjhnb4y7ot4z0ypm9j3hb59ax8v7n4ed82p01xtmu73iajvjnxov4wfuni17mmhi9smsf3sak8q9k04no4u8f7um8h4qhqk3xww3nmohl4190hr2rwnsw5nw1qs7vh60adz8a94qkeerkvvkf2b6qznm3q5x2aa1e8u9fq4liav015vwx5xzfn64b"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 228
    .local v0, "modulus":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "1ekh"

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 229
    .local v1, "publicExponent":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lcom/android/server/secrecy/RSA;->initRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/PublicKey;

    move-result-object v2

    .line 233
    .local v2, "publicKey":Ljava/security/PublicKey;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .local v4, "signature":[B
    nop

    .line 236
    nop

    .line 239
    invoke-static {v2, v4}, Lcom/android/server/secrecy/RSA;->decrypt(Ljava/security/PublicKey;[B)[B

    move-result-object v5

    .line 240
    .local v5, "deciphered":[B
    invoke-static {p1}, Lcom/android/server/secrecy/RSA;->shaDigest(Ljava/lang/String;)[B

    move-result-object v6

    .line 242
    .local v6, "sha":[B
    if-eqz v5, :cond_2

    if-nez v6, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    array-length v7, v5

    array-length v8, v6

    if-le v7, v8, :cond_1

    .line 252
    array-length v7, v6

    new-array v7, v7, [B

    .line 253
    .local v7, "trim":[B
    array-length v8, v5

    array-length v9, v6

    sub-int/2addr v8, v9

    array-length v9, v6

    invoke-static {v5, v8, v7, v3, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 255
    .end local v7    # "trim":[B
    :cond_1
    move-object v7, v5

    .restart local v7    # "trim":[B
    :goto_0
    move-object v3, v7

    .line 258
    .end local v7    # "trim":[B
    .local v3, "trim":[B
    invoke-static {v6, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    return v7

    .line 243
    .end local v3    # "trim":[B
    :cond_2
    :goto_1
    const-string v7, "SecrecyService.DecryptTool"

    const-string v8, "ERROR: Verify signature failed."

    invoke-static {v7, v8}, Lcom/android/server/secrecy/policy/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return v3

    .line 234
    .end local v4    # "signature":[B
    .end local v5    # "deciphered":[B
    .end local v6    # "sha":[B
    :catch_0
    move-exception v4

    .line 235
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "SecrecyService.DecryptTool"

    const-string v6, "ERROR: Signature is malformat."

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return v3
.end method


# virtual methods
.method public config(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "config"    # Ljava/lang/String;

    .line 67
    const-string v0, "SecrecyService.DecryptTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v0, 0x2e

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "propString":Ljava/lang/String;
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "sr":Ljava/io/StringReader;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 73
    .local v2, "pros":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .line 79
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 81
    .local v3, "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-string v4, "encrypt_app"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "prop":Ljava/lang/String;
    const-string v5, "SecrecyService.DecryptTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptAppSuggest prop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 86
    :cond_0
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 87
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    const-string v5, "encrypt_log"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string v5, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptLogSuggest prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 95
    :cond_2
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_3
    const-string v5, "encrypt_adb"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    const-string v5, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptAdbSuggest prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v4, :cond_4

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 104
    :cond_4
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 105
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_5
    const-string v5, "encrypt_all"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string v5, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptAll prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v4, :cond_6

    .line 111
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 113
    :cond_6
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 114
    iget-object v5, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    .line 116
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 117
    iget-object v5, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string v6, "config"

    invoke-virtual {v5, v3, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    .line 118
    const-string v5, "OK"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_8
    const-string v5, "ERROR: Config argument is illegal."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 74
    .end local v3    # "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v4    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ERROR: Config argument is malformat."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public config(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 125
    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "imei":Ljava/lang/String;
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

    .line 128
    const-string v0, "SecrecyService.DecryptTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imei = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v0, 0x2e

    const/16 v6, 0xd

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "propString":Ljava/lang/String;
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 132
    .local v7, "sr":Ljava/io/StringReader;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v8, v0

    .line 134
    .local v8, "pros":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v8, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    nop

    .line 140
    const-string/jumbo v0, "imei"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "proImei":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v0

    .line 142
    .local v10, "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 148
    :cond_0
    const-string/jumbo v0, "stamp"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, "proStamp":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 150
    const-wide/16 v12, -0x1

    .line 152
    .local v12, "stamp":J
    const/16 v0, 0x10

    :try_start_1
    invoke-static {v11, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v12, v14

    .line 156
    nop

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 158
    .local v14, "now":J
    const-wide/32 v16, 0x5265c00

    add-long v18, v14, v16

    cmp-long v0, v12, v18

    if-gtz v0, :cond_3

    sub-long v16, v14, v16

    cmp-long v0, v12, v16

    if-gez v0, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/android/server/secrecy/SecrecyConfig;->getInstance()Lcom/android/server/secrecy/SecrecyConfig;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/secrecy/SecrecyConfig;->calculateChallenge(J)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "chanllengeToken":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 164
    move-object/from16 v20, v0

    const-string v0, "ERROR: Signature doesn\'t match."

    .line 164
    .end local v0    # "chanllengeToken":Ljava/lang/String;
    .local v20, "chanllengeToken":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return-void

    .line 167
    .end local v12    # "stamp":J
    .end local v14    # "now":J
    .end local v20    # "chanllengeToken":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 159
    .restart local v12    # "stamp":J
    .restart local v14    # "now":J
    :cond_3
    :goto_0
    const-string v0, "ERROR: stamp is expired."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    return-void

    .line 153
    .end local v14    # "now":J
    :catch_0
    move-exception v0

    move-object v14, v0

    .line 154
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v14, "ERROR: stamp is invalid."

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    return-void

    .line 167
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "stamp":J
    :cond_4
    invoke-direct {v1, v3, v4}, Lcom/android/server/secrecy/policy/DecryptTool;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 168
    const-string v0, "ERROR: Signature doesn\'t match."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    return-void

    .line 172
    :cond_5
    :goto_1
    const-string v0, "encrypt_app"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "prop":Ljava/lang/String;
    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptAppSuggest prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-eqz v0, :cond_6

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_6
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v12, :cond_7

    .line 178
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 179
    :cond_7
    const-string v12, "false"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 180
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_8
    :goto_2
    const-string v12, "encrypt_log"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptLogSuggest prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-eqz v0, :cond_9

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_9
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 189
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 190
    :cond_a
    const-string v12, "false"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 191
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_b
    :goto_3
    const-string v12, "encrypt_adb"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptAdbSuggest prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz v0, :cond_c

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_c
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x4

    if-eqz v12, :cond_d

    .line 200
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 201
    :cond_d
    const-string v12, "false"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 202
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_e
    :goto_4
    const-string v12, "encrypt_all"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptAll prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-eqz v0, :cond_f

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_f
    const-string/jumbo v12, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 211
    iget-object v12, v1, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v12, v10, v15}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    goto :goto_5

    .line 212
    :cond_10
    const-string v12, "false"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 213
    iget-object v12, v1, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    .line 216
    :cond_11
    :goto_5
    const-string/jumbo v12, "unlock_type"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v12, "SecrecyService.DecryptTool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptUnlockType prop = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz v0, :cond_12

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_12
    iget-object v12, v1, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v12, v10, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    .line 223
    const-string v12, "OK"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    return-void

    .line 143
    .end local v0    # "prop":Ljava/lang/String;
    .end local v11    # "proStamp":Ljava/lang/String;
    :cond_13
    :goto_6
    const-string v0, "ERROR: IMEI doesn\'t match."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v0, "SecrecyService.DecryptTool"

    const-string v11, "ERROR: IMEI doesn\'t match."

    invoke-static {v0, v11}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 135
    .end local v9    # "proImei":Ljava/lang/String;
    .end local v10    # "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "ERROR: Config argument is malformat."

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public verifyKey(Ljava/io/PrintWriter;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "key_arg"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "imei":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/secrecy/policy/DecryptTool;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "OK: key imported successful!"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    return v1

    .line 58
    :cond_0
    const-string v1, "ERROR: The key to import is invalid."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    return v1
.end method
