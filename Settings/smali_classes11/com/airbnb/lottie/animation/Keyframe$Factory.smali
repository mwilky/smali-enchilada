.class public Lcom/airbnb/lottie/animation/Keyframe$Factory;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .param p0, "hash"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 127
    const-class v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object v1

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/Keyframe;
    .locals 20
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<",
            "TT;>;)",
            "Lcom/airbnb/lottie/animation/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .local p3, "valueFactory":Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 145
    move-object/from16 v3, p3

    const/4 v0, 0x0

    .line 146
    .local v0, "cp1":Landroid/graphics/PointF;
    const/4 v4, 0x0

    .line 147
    .local v4, "cp2":Landroid/graphics/PointF;
    const/4 v5, 0x0

    .line 148
    .local v5, "startFrame":F
    const/4 v6, 0x0

    .line 149
    .local v6, "startValue":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 150
    .local v7, "endValue":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 152
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    const-string v9, "t"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 153
    const-string v9, "t"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v5, v9

    .line 154
    const-string v9, "s"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 155
    .local v9, "startValueJson":Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 156
    invoke-interface {v3, v9, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v6

    .line 159
    :cond_0
    const-string v10, "e"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 160
    .local v10, "endValueJson":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 161
    invoke-interface {v3, v10, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v7

    .line 164
    :cond_1
    const-string v11, "o"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 165
    .local v11, "cp1Json":Lorg/json/JSONObject;
    const-string v12, "i"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 166
    .local v12, "cp2Json":Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 167
    invoke-static {v11, v2}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 168
    invoke-static {v12, v2}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 171
    .end local v0    # "cp1":Landroid/graphics/PointF;
    .local v4, "cp1":Landroid/graphics/PointF;
    .local v13, "cp2":Landroid/graphics/PointF;
    :cond_2
    move-object v13, v4

    move-object v4, v0

    const-string v0, "h"

    const/4 v14, 0x0

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_3

    move v14, v15

    nop

    .line 173
    .local v14, "hold":Z
    :cond_3
    if-eqz v14, :cond_4

    .line 174
    move-object v7, v6

    .line 176
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 203
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    move-object v8, v0

    move-object/from16 v18, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_2

    .line 177
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v8    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    if-eqz v4, :cond_8

    .line 178
    iget v0, v4, Landroid/graphics/PointF;->x:F

    neg-float v15, v2

    invoke-static {v0, v15, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 179
    iget v0, v4, Landroid/graphics/PointF;->y:F

    const/high16 v15, 0x42c80000    # 100.0f

    move/from16 v16, v5

    const/high16 v5, -0x3d380000    # -100.0f

    .end local v5    # "startFrame":F
    .local v16, "startFrame":F
    invoke-static {v0, v5, v15}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 180
    iget v0, v13, Landroid/graphics/PointF;->x:F

    neg-float v5, v2

    invoke-static {v0, v5, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v13, Landroid/graphics/PointF;->x:F

    .line 181
    iget v0, v13, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    invoke-static {v0, v5, v15}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, v13, Landroid/graphics/PointF;->y:F

    .line 182
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v5, v4, Landroid/graphics/PointF;->y:F

    iget v15, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v17, v6

    iget v6, v13, Landroid/graphics/PointF;->y:F

    .end local v6    # "startValue":Ljava/lang/Object;, "TT;"
    .local v17, "startValue":Ljava/lang/Object;, "TT;"
    invoke-static {v0, v5, v15, v6}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v5

    .line 183
    .local v5, "hash":I
    invoke-static {v5}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v6

    .line 184
    .local v6, "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    if-eqz v6, :cond_5

    .line 185
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/animation/Interpolator;

    .line 187
    :cond_5
    if-eqz v6, :cond_7

    if-nez v8, :cond_6

    goto :goto_0

    .line 200
    .end local v5    # "hash":I
    .end local v6    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :cond_6
    move-object/from16 v18, v4

    goto :goto_1

    .line 188
    .restart local v5    # "hash":I
    .restart local v6    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :cond_7
    :goto_0
    iget v0, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v2

    iget v15, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v15, v2

    move-object/from16 v18, v4

    iget v4, v13, Landroid/graphics/PointF;->x:F

    .end local v4    # "cp1":Landroid/graphics/PointF;
    .local v18, "cp1":Landroid/graphics/PointF;
    div-float/2addr v4, v2

    move-object/from16 v19, v6

    iget v6, v13, Landroid/graphics/PointF;->y:F

    .end local v6    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    .local v19, "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    div-float/2addr v6, v2

    invoke-static {v0, v15, v4, v6}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v5, v0}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 200
    .end local v5    # "hash":I
    .end local v19    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :goto_1
    goto :goto_2

    .line 201
    .end local v16    # "startFrame":F
    .end local v17    # "startValue":Ljava/lang/Object;, "TT;"
    .end local v18    # "cp1":Landroid/graphics/PointF;
    .restart local v4    # "cp1":Landroid/graphics/PointF;
    .local v5, "startFrame":F
    .local v6, "startValue":Ljava/lang/Object;, "TT;"
    :cond_8
    move-object/from16 v18, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .end local v4    # "cp1":Landroid/graphics/PointF;
    .end local v5    # "startFrame":F
    .end local v6    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v16    # "startFrame":F
    .restart local v17    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v18    # "cp1":Landroid/graphics/PointF;
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 203
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v9    # "startValueJson":Ljava/lang/Object;
    .end local v10    # "endValueJson":Ljava/lang/Object;
    .end local v11    # "cp1Json":Lorg/json/JSONObject;
    .end local v12    # "cp2Json":Lorg/json/JSONObject;
    .end local v14    # "hold":Z
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    move-object v8, v0

    .line 207
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v8    # "interpolator":Landroid/view/animation/Interpolator;
    :goto_2
    move-object v4, v13

    move-object/from16 v0, v18

    goto :goto_3

    .line 204
    .end local v13    # "cp2":Landroid/graphics/PointF;
    .end local v16    # "startFrame":F
    .end local v17    # "startValue":Ljava/lang/Object;, "TT;"
    .end local v18    # "cp1":Landroid/graphics/PointF;
    .local v0, "cp1":Landroid/graphics/PointF;
    .local v4, "cp2":Landroid/graphics/PointF;
    .restart local v5    # "startFrame":F
    .restart local v6    # "startValue":Ljava/lang/Object;, "TT;"
    :cond_9
    invoke-interface {v3, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v6

    .line 205
    move-object v7, v6

    .line 207
    move/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "startFrame":F
    .end local v6    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v16    # "startFrame":F
    .restart local v17    # "startValue":Ljava/lang/Object;, "TT;"
    :goto_3
    new-instance v5, Lcom/airbnb/lottie/animation/Keyframe;

    const/4 v15, 0x0

    move-object v9, v5

    move-object/from16 v10, p1

    move-object/from16 v11, v17

    move-object v12, v7

    move-object v13, v8

    move/from16 v14, v16

    invoke-direct/range {v9 .. v15}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object v5
.end method

.method public static parseKeyframes(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Ljava/util/List;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONArray;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .line 213
    .local p3, "valueFactory":Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<TT;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 214
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 217
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 219
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/Keyframe;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/airbnb/lottie/animation/Keyframe;->setEndFrames(Ljava/util/List;)V

    .line 224
    return-object v1
.end method

.method private static pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    .line 120
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .param p0, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "interpolator":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    const-class v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
