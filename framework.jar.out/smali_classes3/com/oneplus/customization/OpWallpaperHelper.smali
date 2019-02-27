.class public final Lcom/oneplus/customization/OpWallpaperHelper;
.super Ljava/lang/Object;
.source "OpWallpaperHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpWallpaperHelper"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 168
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

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt(Landroid/content/Context;[B)[B
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encrypted"    # [B

    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "decrypted":[B
    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 221
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/oneplus/customization/OpWallpaperHelper;->getDataKey(Landroid/content/Context;)[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 222
    .local v2, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 223
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 224
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 229
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string v2, "OpWallpaperHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to perform decryption, error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    return-object v0
.end method

.method private static decryptWallpaperBytes(Landroid/content/Context;I)[B
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/customization/OpWallpaperHelper;->getRawResourceBytes(Landroid/content/res/Resources;I)[B

    move-result-object v0

    .line 203
    .local v0, "encrypted":[B
    invoke-static {p0, v0}, Lcom/oneplus/customization/OpWallpaperHelper;->decrypt(Landroid/content/Context;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static decryptWallpaperBytes(Landroid/content/Context;Ljava/io/File;)[B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 209
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .local v0, "encrypted":[B
    nop

    .line 212
    nop

    .line 214
    invoke-static {p0, v0}, Lcom/oneplus/customization/OpWallpaperHelper;->decrypt(Landroid/content/Context;[B)[B

    move-result-object v1

    return-object v1

    .line 210
    .end local v0    # "encrypted":[B
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OpWallpaperHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load bytes from file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDataKey(Landroid/content/Context;)[B
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 177
    const v0, 0x50c0055

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "ws":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/customization/OpWallpaperHelper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 179
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 180
    .local v2, "sha256":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "ws":Ljava/lang/String;
    .end local v2    # "sha256":Ljava/security/MessageDigest;
    move-object v0, v3

    .line 184
    .local v0, "key":[B
    nop

    .line 183
    nop

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50b0001

    invoke-static {v2, v3}, Lcom/oneplus/customization/OpWallpaperHelper;->getRawResourceBytes(Landroid/content/res/Resources;I)[B

    move-result-object v2

    .line 188
    .local v2, "kek":[B
    :try_start_1
    const-string v3, "AES/CBC/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 189
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 190
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 191
    .local v5, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 192
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    .line 193
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string v4, "OpWallpaperHelper"

    const-string v5, "Failed to get data key"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    return-object v1

    .line 181
    .end local v0    # "key":[B
    .end local v2    # "kek":[B
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "OpWallpaperHelper"

    const-string v3, "Failed to generate encrypt key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-object v1
.end method

.method private static getRawResourceBytes(Landroid/content/res/Resources;I)[B
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 160
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 161
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 160
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    nop

    .line 162
    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    .line 164
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 165
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :try_start_3
    invoke-static {v0, v2}, Lcom/oneplus/customization/OpWallpaperHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-static {v0, v1}, Lcom/oneplus/customization/OpWallpaperHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 167
    :cond_1
    return-object v4

    .line 168
    .end local v3    # "buffer":[B
    .end local v5    # "len":I
    :catchall_0
    move-exception v3

    move-object v4, v0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_1
    :try_start_6
    invoke-static {v4, v2}, Lcom/oneplus/customization/OpWallpaperHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v2

    move-object v3, v0

    goto :goto_2

    .line 160
    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 168
    :catchall_3
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_2
    if-eqz v1, :cond_2

    :try_start_8
    invoke-static {v3, v1}, Lcom/oneplus/customization/OpWallpaperHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v1    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "OpWallpaperHelper"

    const-string v3, "Failed to load raw resource bytes"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 235
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 236
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 237
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 238
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 236
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 240
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static openAvgDefaultWallpaperStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 123
    new-instance v0, Ljava/io/File;

    const-string v1, "/op1/wallpaper/wp00001.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 125
    const-string v1, "OpWallpaperHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default keyguard wallpaper file["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v2

    .line 128
    :cond_0
    const-string v1, "OpWallpaperHelper"

    const-string v3, "begin decrypt for special theme"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p0, v0}, Lcom/oneplus/customization/OpWallpaperHelper;->decryptWallpaperBytes(Landroid/content/Context;Ljava/io/File;)[B

    move-result-object v1

    .line 130
    .local v1, "bytes":[B
    if-nez v1, :cond_1

    .line 131
    const-string v3, "OpWallpaperHelper"

    const-string v4, "bytes null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v2

    .line 134
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/oneplus/customization/CustomizationSettings;->getCustomization()Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    move-result-object v0

    .line 40
    .local v0, "customization":Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;
    const-string v1, "OpWallpaperHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "inputStream":Ljava/io/InputStream;
    sget-object v2, Lcom/oneplus/customization/OpWallpaperHelper$1;->$SwitchMap$com$oneplus$customization$CustomizationSettings$CUSTOM_TYPE:[I

    invoke-virtual {v0}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-static {}, Lcom/oneplus/customization/OpWallpaperHelper;->openMclDefaultWallpaperStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-static {p0}, Lcom/oneplus/customization/OpWallpaperHelper;->openAvgDefaultWallpaperStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 51
    goto :goto_0

    .line 47
    :pswitch_2
    invoke-static {p0}, Lcom/oneplus/customization/OpWallpaperHelper;->openSwDefaultWallpaperStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 48
    goto :goto_0

    .line 44
    :pswitch_3
    invoke-static {p0}, Lcom/oneplus/customization/OpWallpaperHelper;->openJccDefaultWallpaperStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 45
    nop

    .line 57
    :goto_0
    if-eqz v1, :cond_0

    .line 58
    const-string v2, "OpWallpaperHelper"

    const-string v3, "return special wallpaper"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-object v1

    .line 65
    :cond_0
    invoke-static {}, Lcom/oneplus/customization/CustomizationSettings;->getCustomBackCoverType()Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    move-result-object v2

    .line 66
    .local v2, "backCoverType":Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    const-string v3, "OpWallpaperHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backCoverType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v3, Lcom/oneplus/customization/OpWallpaperHelper$1;->$SwitchMap$com$oneplus$customization$CustomizationSettings$CUSTOM_BACK_COVER_TYPE:[I

    invoke-virtual {v2}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 85
    const v3, 0x5060046    # 6.3007E-36f

    goto :goto_1

    .line 81
    :pswitch_4
    const v3, 0x5060001

    .line 82
    .local v3, "wpId":I
    goto :goto_1

    .line 78
    .end local v3    # "wpId":I
    :pswitch_5
    const v3, 0x506002d

    .line 79
    .restart local v3    # "wpId":I
    goto :goto_1

    .line 75
    .end local v3    # "wpId":I
    :pswitch_6
    const v3, 0x5060002

    .line 76
    .restart local v3    # "wpId":I
    goto :goto_1

    .line 72
    .end local v3    # "wpId":I
    :pswitch_7
    const v3, 0x506002e

    .line 73
    .restart local v3    # "wpId":I
    goto :goto_1

    .line 69
    .end local v3    # "wpId":I
    :pswitch_8
    const v3, 0x5060045

    .line 70
    .restart local v3    # "wpId":I
    nop

    .line 85
    :goto_1
    nop

    .line 88
    const-string v4, "OpWallpaperHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return default wallpaper, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 91
    :catch_0
    move-exception v4

    .line 94
    const/4 v4, 0x0

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static openJccDefaultWallpaperStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    const/high16 v0, 0x5060000

    .line 100
    .local v0, "resId":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 101
    :catch_0
    move-exception v1

    .line 104
    const/4 v1, 0x0

    return-object v1
.end method

.method private static openMclDefaultWallpaperStream()Ljava/io/InputStream;
    .locals 5

    .line 142
    new-instance v0, Ljava/io/File;

    const-string v1, "/op1/wallpaper/wp00001.png"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 144
    const-string v1, "OpWallpaperHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default keyguard wallpaper file["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v2

    .line 148
    :cond_0
    const-string v1, "OpWallpaperHelper"

    const-string v3, "begin decode for special theme"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    .line 151
    .local v1, "bytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 152
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "OpWallpaperHelper"

    const-string v4, "failed to read default wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v2
.end method

.method private static openSwDefaultWallpaperStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    const-string v0, "OpWallpaperHelper"

    const-string v1, "begin decrypt for special theme"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/high16 v0, 0x50b0000

    .line 111
    .local v0, "resId":I
    const/high16 v1, 0x50b0000

    invoke-static {p0, v1}, Lcom/oneplus/customization/OpWallpaperHelper;->decryptWallpaperBytes(Landroid/content/Context;I)[B

    move-result-object v1

    .line 112
    .local v1, "bytes":[B
    if-nez v1, :cond_0

    .line 113
    const-string v2, "OpWallpaperHelper"

    const-string v3, "bytes null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x0

    return-object v2

    .line 116
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2
.end method
