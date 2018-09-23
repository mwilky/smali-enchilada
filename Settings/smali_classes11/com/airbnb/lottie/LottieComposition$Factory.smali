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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2
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

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p0, v0, p2}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

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

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

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

    new-instance v0, Lcom/airbnb/lottie/model/FileCompositionLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/lottie/model/FileCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/model/FileCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "LOTTIE"

    const-string v2, "Failed to load composition."

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to load JSON."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LOTTIE"

    const-string v2, "Failed to load composition."

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to find file."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    nop

    const/4 v0, 0x0

    return-object v0

    :goto_1
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static fromJson(Landroid/content/res/Resources;Lorg/json/JSONObject;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/model/JsonCompositionLoader;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/model/JsonCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/model/JsonCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    .locals 29

    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const-string v3, "w"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v3, "h"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v3, 0x0

    if-eq v15, v4, :cond_0

    if-eq v14, v4, :cond_0

    int-to-float v4, v15

    mul-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v5, v14

    mul-float/2addr v5, v2

    float-to-int v5, v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v6

    :cond_0
    const-string v4, "ip"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v4, "op"

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    const-string v4, "fr"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v13, v4

    const-string v4, "v"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "[.]"

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/4 v3, 0x2

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

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

    move/from16 v27, v13

    move/from16 v13, v23

    move/from16 v28, v14

    move-object/from16 v14, v25

    invoke-direct/range {v3 .. v14}, Lcom/airbnb/lottie/LottieComposition;-><init>(Landroid/graphics/Rect;JJFFIIILcom/airbnb/lottie/LottieComposition$1;)V

    const-string v4, "assets"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-static {v4, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    const-string v5, "fonts"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseFonts(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    const-string v5, "chars"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseChars(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-static {v0, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    return-object v3
.end method

.method private static parseChars(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    nop

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/FontCharacter$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    move-result-object v2

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$600(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseFonts(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "list"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/model/Font$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/Font;

    move-result-object v3

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$500(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/airbnb/lottie/LottieImageAsset$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v3

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$400(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 7

    const-string v0, "layers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/airbnb/lottie/model/layer/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Image:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$100(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$200(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/model/layer/Layer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-le v2, v3, :cond_3

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

    :cond_3
    return-void
.end method

.method private static parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 11
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "layers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v6}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move v7, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/airbnb/lottie/model/layer/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10, v8}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-string v7, "id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$300(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
