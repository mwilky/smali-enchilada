.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final DEFINDED_DP:I = 0x1a4

.field private static final LOG_TAG:Ljava/lang/String; = "DisplayDensityUtils"

.field private static final MAX_SCALE:F = 1.5f

.field private static final MIN_DIMENSION_DP:I = 0x140

.field private static final MIN_SCALE:F = 0.85f

.field private static final MIN_SCALE_INTERVAL:F = 0.09f

.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    .line 55
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    .line 61
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    .line 73
    const/4 v1, 0x3

    new-array v1, v1, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v2

    .line 100
    .local v2, "defaultDensity":I
    if-gtz v2, :cond_0

    .line 101
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 102
    iput-object v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 103
    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 104
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 109
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    iget v5, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 113
    .local v5, "currentDensity":I
    const/4 v6, -0x1

    .line 116
    .local v6, "currentDensityIndex":I
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 117
    .local v7, "minDimensionPx":I
    const/16 v8, 0xa0

    mul-int/2addr v8, v7

    div-int/lit16 v8, v8, 0x140

    .line 118
    .local v8, "maxDensity":I
    const/high16 v9, 0x3fc00000    # 1.5f

    int-to-float v10, v8

    int-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 119
    .local v9, "maxScale":F
    const v10, 0x3f59999a    # 0.85f

    .line 121
    .local v10, "minScale":F
    sget-object v11, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    array-length v11, v11

    .line 123
    .local v11, "numLarger":I
    sget-object v12, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    array-length v12, v12

    .line 127
    .local v12, "numSmaller":I
    const/4 v13, 0x1

    add-int v14, v13, v12

    add-int/2addr v14, v11

    new-array v14, v14, [Ljava/lang/String;

    .line 128
    .local v14, "entries":[Ljava/lang/String;
    array-length v15, v14

    new-array v15, v15, [I

    .line 129
    .local v15, "values":[I
    const/16 v16, 0x0

    .line 131
    .local v16, "curIndex":I
    if-lez v12, :cond_2

    .line 132
    const v17, 0x3e199998    # 0.14999998f

    int-to-float v1, v12

    div-float v17, v17, v1

    .line 135
    .local v17, "interval":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_2

    .line 137
    const/16 v19, 0x28

    sub-int v20, v12, v1

    mul-int v13, v19, v20

    rsub-int v13, v13, 0x1a4

    .line 139
    .local v13, "density":I
    if-ne v5, v13, :cond_1

    .line 140
    move/from16 v6, v16

    .line 142
    :cond_1
    sget-object v19, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    move-object/from16 v21, v4

    aget v4, v19, v1

    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .local v21, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v16

    .line 143
    aput v13, v15, v16

    .line 144
    add-int/lit8 v16, v16, 0x1

    .line 135
    .end local v13    # "density":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v21

    const/4 v13, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    .end local v17    # "interval":F
    .end local v21    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    move-object/from16 v21, v4

    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "metrics":Landroid/util/DisplayMetrics;
    if-ne v5, v2, :cond_3

    .line 149
    move/from16 v6, v16

    .line 151
    :cond_3
    aput v2, v15, v16

    .line 152
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v16

    .line 153
    const/4 v1, 0x1

    add-int/lit8 v16, v16, 0x1

    .line 155
    if-lez v11, :cond_8

    .line 156
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v9, v1

    int-to-float v4, v11

    div-float/2addr v1, v4

    .line 157
    .local v1, "interval":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_8

    .line 160
    const/4 v13, 0x0

    .line 161
    .restart local v13    # "density":I
    if-nez v4, :cond_4

    .line 162
    const/16 v13, 0x1e0

    .line 169
    move/from16 v22, v1

    goto :goto_2

    .line 163
    :cond_4
    move/from16 v22, v1

    const/4 v1, 0x1

    if-ne v4, v1, :cond_5

    .line 164
    .end local v1    # "interval":F
    .local v22, "interval":F
    const/16 v13, 0x1f4

    goto :goto_2

    .line 165
    :cond_5
    const/4 v1, 0x2

    if-ne v4, v1, :cond_6

    .line 166
    const/16 v13, 0x21c

    .line 169
    :cond_6
    :goto_2
    if-ne v5, v13, :cond_7

    .line 170
    move/from16 v6, v16

    .line 172
    :cond_7
    aput v13, v15, v16

    .line 173
    sget-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v16

    .line 174
    add-int/lit8 v16, v16, 0x1

    .line 157
    .end local v13    # "density":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v22

    goto :goto_1

    .line 179
    .end local v4    # "i":I
    .end local v22    # "interval":F
    :cond_8
    if-ltz v6, :cond_9

    .line 180
    move v1, v6

    .local v1, "displayIndex":I
    goto :goto_3

    .line 184
    .end local v1    # "displayIndex":I
    :cond_9
    array-length v1, v15

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 185
    .local v1, "newLength":I
    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    .line 186
    aput v5, v15, v16

    .line 188
    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, [Ljava/lang/String;

    .line 189
    sget v13, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v4, v18

    invoke-virtual {v3, v13, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v16

    .line 191
    nop

    .end local v1    # "newLength":I
    move/from16 v1, v16

    .line 194
    .local v1, "displayIndex":I
    :goto_3
    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 195
    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 196
    iput-object v14, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 197
    iput-object v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 198
    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2
    .param p0, "displayId"    # I

    .line 241
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 242
    .local v0, "userId":I
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 2
    .param p0, "displayId"    # I

    .line 225
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 226
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 227
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "exc":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .locals 3
    .param p0, "displayId"    # I
    .param p1, "userId"    # I

    .line 244
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 245
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0    # "wm":Landroid/view/IWindowManager;
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "DisplayDensityUtils"

    const-string v2, "Unable to clear forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$setForcedDisplayDensity$1(III)V
    .locals 3
    .param p0, "displayId"    # I
    .param p1, "density"    # I
    .param p2, "userId"    # I

    .line 265
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 266
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "wm":Landroid/view/IWindowManager;
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "DisplayDensityUtils"

    const-string v2, "Unable to save forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "density"    # I

    .line 262
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 263
    .local v0, "userId":I
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object v0
.end method
