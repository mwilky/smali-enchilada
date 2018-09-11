.class public Lcom/airbnb/lottie/LottieComposition$Factory;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method private static addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/Layer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ")V"
        }
    .end annotation

    .line 380
    .local p0, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p1, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 382
    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .local v0, "stream":Ljava/io/InputStream;
    nop

    .line 191
    nop

    .line 193
    invoke-static {p0, v0, p2}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    move-result-object v1

    return-object v1

    .line 190
    .end local v0    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromFileSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .local v0, "stream":Ljava/io/InputStream;
    nop

    .line 215
    nop

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    return-object v1

    .line 214
    .end local v0    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .line 203
    new-instance v0, Lcom/airbnb/lottie/model/FileCompositionLoader;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/lottie/model/FileCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    .line 205
    .local v0, "loader":Lcom/airbnb/lottie/model/FileCompositionLoader;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/model/FileCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-object v0
.end method

.method public static fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 235
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 236
    .local v0, "size":I
    new-array v1, v0, [B

    .line 238
    .local v1, "buffer":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 239
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 240
    .local v2, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    return-object v4

    .line 249
    .end local v0    # "size":I
    .end local v1    # "buffer":[B
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v1, "LOTTIE"

    const-string v2, "Failed to load composition."

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to load JSON."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LOTTIE"

    const-string v2, "Failed to load composition."

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to find file."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 250
    nop

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 249
    :goto_1
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static fromJson(Landroid/content/res/Resources;Lorg/json/JSONObject;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .line 226
    new-instance v0, Lcom/airbnb/lottie/model/JsonCompositionLoader;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/model/JsonCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    .line 227
    .local v0, "loader":Lcom/airbnb/lottie/model/JsonCompositionLoader;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/model/JsonCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 228
    return-object v0
.end method

.method public static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    .locals 29
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 255
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 256
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 257
    .local v2, "scale":F
    const-string v3, "w"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 258
    .local v15, "width":I
    const-string v3, "h"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 260
    .local v14, "height":I
    const/4 v3, 0x0

    if-eq v15, v4, :cond_0

    if-eq v14, v4, :cond_0

    .line 261
    int-to-float v4, v15

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 262
    .local v4, "scaledWidth":I
    int-to-float v5, v14

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 263
    .local v5, "scaledHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v6

    .line 266
    .end local v4    # "scaledWidth":I
    .end local v5    # "scaledHeight":I
    :cond_0
    const-string v4, "ip"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 267
    .local v16, "startFrame":J
    const-string v4, "op"

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 268
    .local v18, "endFrame":J
    const-string v4, "fr"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v13, v4

    .line 269
    .local v13, "frameRate":F
    const-string v4, "v"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 270
    .local v12, "version":Ljava/lang/String;
    const-string v4, "[.]"

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 271
    .local v20, "versions":[Ljava/lang/String;
    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 272
    .local v21, "major":I
    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 273
    .local v22, "minor":I
    const/4 v3, 0x2

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 274
    .local v23, "patch":I
    new-instance v24, Lcom/airbnb/lottie/LottieComposition;

    const/16 v25, 0x0

    move-object/from16 v3, v24

    move-object v4, v1

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move v9, v13

    move v10, v2

    move/from16 v11, v21

    move-object/from16 v26, v12

    move/from16 v12, v22

    .end local v12    # "version":Ljava/lang/String;
    .local v26, "version":Ljava/lang/String;
    move/from16 v27, v13

    move/from16 v13, v23

    .end local v13    # "frameRate":F
    .local v27, "frameRate":F
    move/from16 v28, v14

    move-object/from16 v14, v25

    .end local v14    # "height":I
    .local v28, "height":I
    invoke-direct/range {v3 .. v14}, Lcom/airbnb/lottie/LottieComposition;-><init>(Landroid/graphics/Rect;JJFFIIILcom/airbnb/lottie/LottieComposition$1;)V

    .line 276
    .local v3, "composition":Lcom/airbnb/lottie/LottieComposition;
    const-string v4, "assets"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 277
    .local v4, "assetsJson":Lorg/json/JSONArray;
    invoke-static {v4, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 278
    invoke-static {v4, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 279
    const-string v5, "fonts"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseFonts(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    .line 280
    const-string v5, "chars"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseChars(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 281
    invoke-static {v0, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    .line 282
    return-object v3
.end method

.method private static parseChars(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5
    .param p0, "charsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 367
    if-nez p0, :cond_0

    .line 368
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 372
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 373
    nop

    .line 374
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/FontCharacter$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    move-result-object v2

    .line 375
    .local v2, "character":Lcom/airbnb/lottie/model/FontCharacter;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$600(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 372
    .end local v2    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static parseFonts(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p0, "fonts"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 352
    if-nez p0, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    const-string v0, "list"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 356
    .local v0, "fontsList":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 357
    return-void

    .line 359
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 360
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 361
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/model/Font$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/Font;

    move-result-object v3

    .line 362
    .local v3, "font":Lcom/airbnb/lottie/model/Font;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$500(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v3    # "font":Lcom/airbnb/lottie/model/Font;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private static parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p0, "assetsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 337
    if-nez p0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 341
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 342
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 343
    .local v2, "assetJson":Lorg/json/JSONObject;
    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 344
    goto :goto_1

    .line 346
    :cond_1
    invoke-static {v2}, Lcom/airbnb/lottie/LottieImageAsset$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v3

    .line 347
    .local v3, "image":Lcom/airbnb/lottie/LottieImageAsset;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$400(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v2    # "assetJson":Lorg/json/JSONObject;
    .end local v3    # "image":Lcom/airbnb/lottie/LottieImageAsset;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 286
    const-string v0, "layers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 291
    .local v0, "jsonLayers":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 295
    .local v1, "length":I
    const/4 v2, 0x0

    .line 296
    .local v2, "imageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 297
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/airbnb/lottie/model/layer/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v4

    .line 298
    .local v4, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Image:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v5, v6, :cond_1

    .line 299
    add-int/lit8 v2, v2, 0x1

    .line 301
    :cond_1
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$100(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$200(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 296
    .end local v4    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x4

    if-le v2, v3, :cond_3

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 309
    :cond_3
    return-void
.end method

.method private static parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 11
    .param p0, "assetsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 313
    if-nez p0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 317
    .local v0, "length":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 318
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 319
    .local v3, "assetJson":Lorg/json/JSONObject;
    const-string v4, "layers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 320
    .local v4, "layersJson":Lorg/json/JSONArray;
    if-nez v4, :cond_1

    .line 321
    goto :goto_2

    .line 323
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    .local v5, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v6}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 325
    .local v6, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move v7, v1

    .local v7, "j":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 326
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/airbnb/lottie/model/layer/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v8

    .line 327
    .local v8, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10, v8}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 328
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v8    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 330
    .end local v7    # "j":I
    :cond_2
    const-string v7, "id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "id":Ljava/lang/String;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$300(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v3    # "assetJson":Lorg/json/JSONObject;
    .end local v4    # "layersJson":Lorg/json/JSONArray;
    .end local v5    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v6    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v7    # "id":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
