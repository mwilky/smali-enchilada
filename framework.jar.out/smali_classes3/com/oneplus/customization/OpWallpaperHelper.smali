.class public final Lcom/oneplus/customization/OpWallpaperHelper;
.super Ljava/lang/Object;
.source "OpWallpaperHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpWallpaperHelper"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt(Landroid/content/Context;[B)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/oneplus/customization/OpWallpaperHelper;->getDataKey(Landroid/content/Context;)[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

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

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OpWallpaperHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to perform decryption, error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private static decryptWallpaperBytes(Landroid/content/Context;I)[B
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/customization/OpWallpaperHelper;->getRawResourceBytes(Landroid/content/res/Resources;I)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/customization/OpWallpaperHelper;->decrypt(Landroid/content/Context;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static decryptWallpaperBytes(Landroid/content/Context;Ljava/io/File;)[B
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p0, v0}, Lcom/oneplus/customization/OpWallpaperHelper;->decrypt(Landroid/content/Context;[B)[B

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

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

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDataKey(Landroid/content/Context;)[B
    .locals 7

    const v0, 0x50c0055

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50b0001

    invoke-static {v2, v3}, Lcom/oneplus/customization/OpWallpaperHelper;->getRawResourceBytes(Landroid/content/res/Resources;I)[B

    move-result-object v2

    :try_start_1
    const-string v3, "AES/CBC/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

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

    :catch_0
    move-exception v3

    const-string v4, "OpWallpaperHelper"

    const-string v5, "Failed to get data key"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "OpWallpaperHelper"

    const-string v3, "Failed to generate encrypt key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getRawResourceBytes(Landroid/content/res/Resources;I)[B
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    :cond_1
    return-object v4

    :catchall_0
    move-exception v3

    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

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

    :catchall_2
    move-exception v2

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

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

    :catch_2
    move-exception v1

    const-string v2, "OpWallpaperHelper"

    const-string v3, "Failed to load raw resource bytes"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/oneplus/customization/CustomizationSettings;->getCustomization()Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    move-result-object v3

    const-string v4, "OpWallpaperHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "customization="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v4, v3}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v4, v3}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v4, v3}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    const-string v4, "OpWallpaperHelper"

    const-string v5, "begin decrypt for special theme"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x50b0000

    const/high16 v5, 0x50b0000

    invoke-static {p0, v5}, Lcom/oneplus/customization/OpWallpaperHelper;->decryptWallpaperBytes(Landroid/content/Context;I)[B

    move-result-object v5

    if-nez v5, :cond_3

    const-string v6, "OpWallpaperHelper"

    const-string v7, "bytes null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v6, "OpWallpaperHelper"

    const-string v7, "return special wallpaper"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v6

    :cond_4
    :goto_1
    if-eqz v2, :cond_7

    new-instance v4, Ljava/io/File;

    const-string v5, "/op1/wallpaper/wp00001.jpg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "OpWallpaperHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default keyguard wallpaper file["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "] does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const-string v5, "OpWallpaperHelper"

    const-string v6, "begin decrypt for special theme"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4}, Lcom/oneplus/customization/OpWallpaperHelper;->decryptWallpaperBytes(Landroid/content/Context;Ljava/io/File;)[B

    move-result-object v5

    if-nez v5, :cond_6

    const-string v6, "OpWallpaperHelper"

    const-string v7, "bytes null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const-string v6, "OpWallpaperHelper"

    const-string v7, "return special wallpaper"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v6

    :cond_7
    :goto_2
    if-nez v0, :cond_9

    if-nez v2, :cond_9

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const/high16 v4, 0x5060000

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/oneplus/customization/CustomizationSettings;->getCustomBackCoverType()Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    move-result-object v5

    const-string v6, "OpWallpaperHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backCoverType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/oneplus/customization/OpWallpaperHelper$1;->$SwitchMap$com$oneplus$customization$CustomizationSettings$CUSTOM_BACK_COVER_TYPE:[I

    invoke-virtual {v5}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    const v4, 0x5060041

    goto :goto_3

    :pswitch_0
    const v4, 0x5060001

    goto :goto_3

    :pswitch_1
    const v4, 0x506002d

    goto :goto_3

    :pswitch_2
    const v4, 0x5060002

    goto :goto_3

    :pswitch_3
    const v4, 0x506002e

    goto :goto_3

    :pswitch_4
    const v4, 0x5060040

    nop

    :goto_3
    const-string v5, "OpWallpaperHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return default wallpaper, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v5

    :cond_9
    const/4 v4, 0x0

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
